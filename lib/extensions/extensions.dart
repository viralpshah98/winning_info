import 'package:flutter/material.dart';
import 'package:winning_info/utils/enum_utils/enum_utils.dart';
import 'package:winning_info/utils/utils.dart';

extension SnackBarTypeExtension on SnackBarType {
  String get promptTitle {
    switch (this) {
      case SnackBarType.info:
        return Utils().stringsUtils.commonStrings.strInfo;
      case SnackBarType.error:
        return Utils().stringsUtils.commonStrings.strError;
      case SnackBarType.success:
        return Utils().stringsUtils.commonStrings.strSuccess;
      case SnackBarType.warning:
        return Utils().stringsUtils.commonStrings.strWarning;
    }
  }

  IconData get promptIcon {
    switch (this) {
      case SnackBarType.info:
        return Icons.info_outline_rounded;
      case SnackBarType.error:
        return Icons.cancel_outlined;
      case SnackBarType.success:
        return Icons.check_circle_outline_rounded;
      case SnackBarType.warning:
        return Icons.error_outline_rounded;
    }
  }

  Color get promptColor {
    switch (this) {
      case SnackBarType.info:
        return Utils().colorsUtils.snackBarInfoColor;
      case SnackBarType.error:
        return Utils().colorsUtils.snackBarErrorColor;
      case SnackBarType.success:
        return Utils().colorsUtils.snackBarSuccessColor;
      case SnackBarType.warning:
        return Utils().colorsUtils.snackBarWarningColor;
    }
  }
}