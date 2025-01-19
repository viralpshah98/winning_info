import 'package:formz/formz.dart';
import 'package:winning_info/utils/enum_utils/enum_utils.dart';

class MobileNumber
    extends FormzInput<String, TextFormFieldEmptyValidationType> {
  const MobileNumber.pure(super.value) : super.pure();

  const MobileNumber.dirty({String value = ''}) : super.dirty(value);

  @override
  validator(String value) {
    if (value.isEmpty) {
      return TextFormFieldEmptyValidationType.empty;
    }
    return null;
  }
}
