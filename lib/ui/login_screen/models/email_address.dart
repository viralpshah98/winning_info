import 'package:formz/formz.dart';
import 'package:winning_info/constants/constants.dart';
import 'package:winning_info/utils/enum_utils/enum_utils.dart';

class EmailAddress
    extends FormzInput<String, TextFormFieldEmptyAndInvalidValidationType> {
  const EmailAddress.pure(super.value) : super.pure();

  const EmailAddress.dirty({String value = ''}) : super.dirty(value);
  static final _emailAddressRegExp = RegExp(regExpEmailAddress);

  @override
  validator(String value) {
    if (value.isEmpty) {
      return TextFormFieldEmptyAndInvalidValidationType.empty;
    } else if (!_emailAddressRegExp.hasMatch(value)) {
      return TextFormFieldEmptyAndInvalidValidationType.invalid;
    }
    return null;
  }
}
