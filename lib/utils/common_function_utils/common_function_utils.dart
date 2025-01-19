import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:winning_info/api/model/http_header_response_model/http_header_response_model.dart';
import 'package:winning_info/utils/enum_utils/enum_utils.dart';
import 'package:winning_info/utils/get_storage_utils/get_storage_utils.dart';
import 'package:winning_info/utils/snack_bar_utils/snack_bar_utils.dart';

import '../utils.dart';

class CommonFunctionUtils {
  static Future<void> logout(String? message) async {
    await GetStorageUtils.clearStorage();
    // GlobalStorageUtils().clearGlobalStorage();
    // GetStorageUtils.setString(kThemeConfigurations, themeConfigurationsType);
    // eventBus.fire(const LoggedUserEventModel(loginType: LoginType.loggedOut));
    // Get.offAllNamed(ExclusiveAccessScreen.route);
    if (message != null) {
      SnackBarUtils.showSnackBar(type: SnackBarType.error, message: message);
    }
  }

  static Future<void> hideKeyboard() async {
    FocusManager.instance.primaryFocus?.unfocus();
    await Future.delayed(const Duration(milliseconds: 300));
  }

  static Future<HTTPHeaderResponseModel> getHeader() async {
    String? authorizationToken =
        await GetStorageUtils.getString(kAuthorizationToken, '');
    return HTTPHeaderResponseModel(
      authorizationToken:
          authorizationToken.isNotEmpty ? 'Bearer $authorizationToken' : null,
    );
  }

  static Future<void> openURL(String socialUrl) async {
    if (!await launchUrl(Uri.parse(socialUrl),
        mode: LaunchMode.externalApplication)) {
      throw SnackBarUtils.showSnackBar(
        message: Utils().stringsUtils.commonStrings.strUrlLaunchError,
        type: SnackBarType.error,
      );
    }
  }
}
