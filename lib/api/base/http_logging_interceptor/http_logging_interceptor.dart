import 'package:dio/dio.dart';
import 'package:winning_info/utils/common_function_utils/common_function_utils.dart';
import 'package:winning_info/utils/logger_utils/logger_utils.dart';

class HttpLoggingInterceptor extends Interceptor {
  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    options.headers = (await CommonFunctionUtils.getHeader()).toJson();
    LoggerUtils().getLogger.i(
        '${options.uri}\n${options.headers.toString()}\n${options.data.toString()}');
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    LoggerUtils()
        .getLogger
        .i('${response.statusCode} - ${response.data.toString()}');
    
    super.onResponse(response, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    LoggerUtils().getLogger.e(err.message.toString());
    super.onError(err, handler);
  }
}
