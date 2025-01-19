import 'package:flutter/material.dart';

class ColorsUtils {
  final colorGeryLight=HexColor('#FFe6e6e6');
  final colorGery2=HexColor('#FF9d9d9d');
  final colorWhite=HexColor('#FFFFFF');
  final colorRed=HexColor('#FFe00000');
  /// TSClassic Theme Colors
  final classicPrimaryColor = HexColor('#1B6698');
  final classicPrimaryBackgroundColor = HexColor('#F9EDEB');
  final classicPrimaryBottomBarBackgroundColor = Colors.white;
  final classicSecondaryBackgroundColor = HexColor('#F4DCD7');
  final classicPrimaryAccentColor = HexColor('#9E402F');

  final classicPopupBackgroundColor = HexColor('#F9EDEB');

  final classicPrimaryTextColor = Colors.black;
  final classicSecondaryTextColor = HexColor('#2E3E41');
  final classicThirdTextColor = HexColor('#B21B2628');

  final classicForegroundElevatedButtonColor = Colors.white;
  final classicBackgroundElevatedButtonColor = HexColor('#1B6698');
  final classicForegroundTextButtonColor = HexColor('#1B6698');
  final classicBackgroundTextButtonColor = HexColor('#1B6698');

  final classicIconButtonColor = Colors.black;

  final classicPrimaryAppBarBackgroundColor = HexColor('#1B6698');
  final classicSecondaryAppBarBackgroundColor = HexColor('#F9EDEB');
  final classicSecondaryAppBarBorderColor = HexColor('#F4DCD7');

  final classicPrimaryDividerColor = HexColor('#1A000000');

  final classicPrimaryLineColor = HexColor('#A2817B');

  final classicPrimaryShimmerBaseColor = Colors.grey.shade300;
  final classicPrimaryShimmerHighlightColor = Colors.grey.shade100;

  final classicPrimaryFloatingActionButtonBackgroundColor = HexColor('#2E3E41');

  final classicPrimaryNotesBackgroundColor = HexColor('#FDF8F7');

  final classicSnackBarBackgroundColor = HexColor('#F2F4FC');

  /// TSDark Theme Colors
  final darkPrimaryColor = HexColor('#1B6698');
  final darkPrimaryBackgroundColor = Colors.black;
  final darkPrimaryBottomBarBackgroundColor = HexColor('#222222');
  final darkSecondaryBackgroundColor = HexColor('#222222');
  final darkPrimaryAccentColor = HexColor('#9E402F');

  final darkPopupBackgroundColor = HexColor('#222222');

  final darkPrimaryTextColor = HexColor('#E1E1E1');
  final darkSecondaryTextColor = HexColor('#CCE1E1E1');
  final darkThirdTextColor = HexColor('#80E1E1E1');

  final darkForegroundElevatedButtonColor = Colors.white;
  final darkBackgroundElevatedButtonColor = HexColor('#1B6698');
  final darkForegroundTextButtonColor = HexColor('#1B6698');
  final darkBackgroundTextButtonColor = HexColor('#1B6698');

  final darkIconButtonColor = Colors.white;

  final darkPrimaryAppBarBackgroundColor = HexColor('#1B6698');
  final darkSecondaryAppBarBackgroundColor = Colors.black;
  final darkSecondaryAppBarBorderColor = HexColor('#585858');

  final darkPrimaryDividerColor = HexColor('#585858');

  final darkPrimaryLineColor = Colors.white;

  final darkPrimaryShimmerBaseColor = Colors.white.withOpacity(0.1);
  final darkPrimaryShimmerHighlightColor = Colors.white.withOpacity(0.3);

  final darkPrimaryFloatingActionButtonBackgroundColor = HexColor('#2E3E41');

  final darkPrimaryNotesBackgroundColor = HexColor('#222222');

  final darkSnackBarBackgroundColor = HexColor('#222222');

  /// TSNatural Theme Colors
  final naturalPrimaryColor = HexColor('#1B6698');
  final naturalPrimaryBackgroundColor = HexColor('#FAF9F6');
  final naturalPrimaryBottomBarBackgroundColor = Colors.white;
  final naturalSecondaryBackgroundColor = HexColor('#F4DCD7');
  final naturalPrimaryAccentColor = HexColor('#9E402F');

  final naturalPopupBackgroundColor = HexColor('#FAF9F6');

  final naturalPrimaryTextColor = Colors.black;
  final naturalSecondaryTextColor = HexColor('#2E3E41');
  final naturalThirdTextColor = HexColor('#B21B2628');

  final naturalForegroundElevatedButtonColor = Colors.white;
  final naturalBackgroundElevatedButtonColor = HexColor('#1B6698');
  final naturalForegroundTextButtonColor = HexColor('#1B6698');
  final naturalBackgroundTextButtonColor = HexColor('#1B6698');

  final naturalIconButtonColor = Colors.black;

  final naturalPrimaryAppBarBackgroundColor = HexColor('#1B6698');
  final naturalSecondaryAppBarBackgroundColor = HexColor('#FAF9F6');
  final naturalSecondaryAppBarBorderColor = HexColor('#E7E5E1');

  final naturalPrimaryDividerColor = HexColor('#1A000000');

  final naturalPrimaryLineColor = HexColor('#A2817B');

  final naturalPrimaryShimmerBaseColor = Colors.grey.shade300;
  final naturalPrimaryShimmerHighlightColor = Colors.grey.shade100;

  final naturalPrimaryFloatingActionButtonBackgroundColor = HexColor('#2E3E41');

  final naturalPrimaryNotesBackgroundColor = HexColor('#FDF8F7');

  final naturalSnackBarBackgroundColor = HexColor('#F2F4FC');

  /// Common Theme Colors
  final tagLineBackgroundColor = HexColor('#222222');
  final errorColor = HexColor('#DE350B');
  final snackBarInfoColor = HexColor('#0F61AC');
  final snackBarErrorColor = HexColor('#BF2600');
  final snackBarSuccessColor = HexColor('#027243');
  final snackBarWarningColor = HexColor('#FF8B00');
  final pdfContainerBackgroundColor = HexColor('#D1D1D1');
  final pdfPageCounterViewBackgroundColor = HexColor('#404040');
  final newsLetterHeadingColor = HexColor('#2E3E41');
  final primaryColor = HexColor('#1B6698');
  final primaryLightColor = HexColor('#E3DFE3');
}

class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll('#', '');
    if (hexColor.length == 6) {
      hexColor = 'FF$hexColor';
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}
