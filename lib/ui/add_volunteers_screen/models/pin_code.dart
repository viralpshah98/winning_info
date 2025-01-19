import 'package:formz/formz.dart';
import 'package:winning_info/utils/enum_utils/enum_utils.dart';

class PinCode
    extends FormzInput<String, TextFormFieldEmptyValidationType> {
  const PinCode.pure(super.value) : super.pure();

  const PinCode.dirty({String value = ''}) : super.dirty(value);

  @override
  validator(String value) {
    if (value.isEmpty) {
      return TextFormFieldEmptyValidationType.empty;
    }
    return null;
  }
}
