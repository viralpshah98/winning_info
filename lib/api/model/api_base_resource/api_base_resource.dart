import 'package:winning_info/api/constants/constants.dart';
import 'package:winning_info/utils/enum_utils/enum_utils.dart';

class ApiBaseResource {
  ApiStatus apiStatus;
  dynamic data;
  String? message;
  int totalRecords;

  ApiBaseResource({
    this.apiStatus = ApiStatus.unknown,
    this.data,
    this.message,
    this.totalRecords = 0,
  });

  static dynamic unknown() => ApiBaseResource(apiStatus: ApiStatus.unknown);

  static dynamic loading() => ApiBaseResource(apiStatus: ApiStatus.loading);

  static dynamic success(
    dynamic data,
    String message, {
    int? totalRecords,
  }) =>
      ApiBaseResource(
        apiStatus: ApiStatus.success,
        data: data,
        totalRecords: totalRecords ?? 0,
        message: message,
      );

  static dynamic error(String message) => ApiBaseResource(
        apiStatus: ApiStatus.error,
        message: message,
      );

  static dynamic unauthorizedAccess(String message) => ApiBaseResource(
        apiStatus: ApiStatus.unauthorizedAccess,
        message: message,
      );

  static dynamic tokenExpired() => ApiBaseResource(
        apiStatus: ApiStatus.tokenExpired,
      );

  static dynamic updateApp() => ApiBaseResource(
        apiStatus: ApiStatus.updateApp,
      );

  static dynamic somethingWentWrong({String? message}) => ApiBaseResource(
        apiStatus: ApiStatus.somethingWentWrong,
        message: message ?? somethingWentWrongError,
      );

  @override
  String toString() {
    return 'ApiBaseResource('
            '"status" : $apiStatus, '
            '"data" : $data, '
            '"message" : $message, '
            ')'
        .toString();
  }
}
