import 'dart:io';

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:winning_info/api/api_base.dart';
import 'package:http_parser/http_parser.dart';
part 'api_client.g.dart';

@RestApi(baseUrl: null)
abstract class ApiClient {
  factory ApiClient(Dio dio) {
    dio.options = BaseOptions(
      contentType: applicationJson,
      receiveTimeout: const Duration(milliseconds: 60000),
      connectTimeout: const Duration(milliseconds: 60000),
      baseUrl: ApiUrls.baseUrl,
    );
    dio.interceptors.add(HttpLoggingInterceptor());
    return _ApiClient(dio);
  }

  @POST(ApiUrls.loginApi)
  Future<HttpResponse<ApiBaseResponse>> loginWithAPI(
      {@Body(nullToAbsent: true) LoginRequestModel? loginRequestModel});

  @POST(ApiUrls.volunteerListApi)
  Future<HttpResponse<ApiBaseResponse>> volunteerListAPI({
    @Body(nullToAbsent: false)
    VolunteerListRequestModel? volunteerListRequestModel,
    @Query('start') int? start = 0,
    @Query('recordSize') int? recordSize = 10,
  });

  @GET(ApiUrls.stateListApi)
  Future<HttpResponse<ApiBaseResponse>> stateListAPI({
    @Query('countryId') int? countryId,
  });

  @POST(ApiUrls.addVolunteerApi)
  Future<HttpResponse<ApiBaseResponse>> addVolunteerAPI({
    @Body(nullToAbsent: true)
    AddVolunteersRequestModel? addVolunteersRequestModel,
  });

  @DELETE(ApiUrls.deleteVolunteerApi)
  Future<HttpResponse<ApiBaseResponse>> deleteVolunteerAPI({
    @Query('id') int? id,
  });

  @PUT(ApiUrls.updateVolunteerApi)
  Future<HttpResponse<ApiBaseResponse>> updateVolunteerAPI();

  @POST(ApiUrls.uploadFileApi)
  @MultiPart()
  Future<HttpResponse<ApiBaseResponse>> uploadFileAPI(
      {@Part(contentType: 'application/vnd.ms-excel') File? file});

  @GET(ApiUrls.getAccessTokenApi)
  Future<HttpResponse<ApiBaseResponse>> getAccessTokenAPI({
    @Body(nullToAbsent: true)
    ApiBaseResponse? apiBaseResponse,
  });
}
