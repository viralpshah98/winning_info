import 'dart:async';

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:winning_info/api/api_base.dart';
import 'package:winning_info/utils/common_function_utils/common_function_utils.dart';
import 'package:winning_info/utils/enum_utils/enum_utils.dart';
import 'package:winning_info/utils/get_storage_utils/get_storage_utils.dart';
import 'package:winning_info/utils/snack_bar_utils/snack_bar_utils.dart';

abstract class BaseRepository {
  ApiClient apiClient = ApiClient(Dio());

  baseResponse(
      HttpResponse<ApiBaseResponse> httpResponse, StreamController controller) async {
    switch (httpResponse.response.statusCode) {
      case 200:
        if (httpResponse.data.accessToken != null) {
          GetStorageUtils.setString(
              kAuthorizationToken, httpResponse.data.accessToken.toString());
        }
        if (httpResponse.data.refreshToken != null) {
          GetStorageUtils.setString(
              kRefreshToken, httpResponse.data.refreshToken.toString());
        }
        if (httpResponse.data.refreshToken != null) {
          GetStorageUtils.setString(
              kRefreshToken, httpResponse.data.refreshToken.toString());
        }
        if (httpResponse.data.deviceToken != null) {
          GetStorageUtils.setString(
              kDeviceToken, httpResponse.data.deviceToken.toString());
        }
        if (httpResponse.data.hasError ?? true) {
          if (httpResponse.data.code == 2001) {
            controller.add(ApiBaseResource.success(
                null, httpResponse.data.message.toString()));
          }
          else if(httpResponse.data.code==2094)
            {
              final accessToken=await GetStorageUtils.getString(
                  kAuthorizationToken, httpResponse.data.accessToken.toString());
              final refreshToken=await GetStorageUtils.getString(
                  kAuthorizationToken, httpResponse.data.refreshToken.toString());
              apiClient.getAccessTokenAPI(apiBaseResponse:ApiBaseResponse(accessToken: accessToken,refreshToken: refreshToken,),);
            }
          else if (httpResponse.data.code == 2114 ||
              httpResponse.data.code == 2212 ||
              httpResponse.data.code == 2214) {
            controller.add(ApiBaseResource.success(
                httpResponse.data, httpResponse.data.message.toString()));
          } else if (httpResponse.data.code == 1000 ||
              httpResponse.data.code == 1001 || httpResponse.data.code == 1005) {
            if (httpResponse.data.view != null) {
              controller.add(ApiBaseResource.success(httpResponse.data.view,
                  httpResponse.data.message.toString()));
            } else if (httpResponse.data.list != null) {
              controller.add(ApiBaseResource.success(httpResponse.data.list,
                  httpResponse.data.message.toString()));
            }
            else  {
              controller.add(ApiBaseResource.success(httpResponse.data,
                  httpResponse.data.message.toString()));
            }
          } else {
            controller.add(
                ApiBaseResource.error(httpResponse.data.message.toString()));
          }
        } else {
          if (httpResponse.data.view != null) {
            controller.add(ApiBaseResource.success(
                httpResponse.data.view, httpResponse.data.message.toString()));
          } else if (httpResponse.data.list != null) {
            controller.add(ApiBaseResource.success(
              httpResponse.data.list,
              httpResponse.data.message.toString(),
              totalRecords: httpResponse.data.records,
            ));
          } else {
            controller.add(ApiBaseResource.success(
                null, httpResponse.data.message.toString()));
          }
        }
        break;
      default:
        controller.add(ApiBaseResource.somethingWentWrong());
        break;
    }
  }

  baseErrorResponse(dynamic onError, StreamController controller) {
    switch ((onError as DioException).type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.connectionError:
        controller.add(ApiBaseResource.unknown());
        break;
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
      case DioExceptionType.cancel:
      case DioExceptionType.badCertificate:
      case DioExceptionType.unknown:
        onError.message != null
            ? controller.add(ApiBaseResource.error(onError.message.toString()))
            : controller.add(ApiBaseResource.unknown());
        break;
      case DioExceptionType.badResponse:
        final response = onError.response;
        switch (response?.statusCode) {
          case 401:
            controller.add(ApiBaseResource.tokenExpired());
            CommonFunctionUtils.logout(null);
            break;
          case 403:
            final apiBaseResponse = ApiBaseResponse.fromJson(response?.data);
            controller.add(ApiBaseResource.unauthorizedAccess(
              apiBaseResponse.message.toString(),
            ));
            break;
          /*case 426:
            controller.add(ApiBaseResource.updateApp());
            CommonFunctionUtils.updateAppPopup();
            break;*/
          case 500:
          default:
            final apiBaseResponse = ApiBaseResponse.fromJson(response?.data);
            controller.add(ApiBaseResource.somethingWentWrong(
              message: apiBaseResponse.message.toString(),
            ));
            if (apiBaseResponse.message != null) {
              SnackBarUtils.showSnackBar(
                type: SnackBarType.error,
                message: apiBaseResponse.message,
              );
            }
            break;
        }
        break;
    }
  }
}
