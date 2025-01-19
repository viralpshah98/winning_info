import 'package:formz/formz.dart';
import 'package:winning_info/utils/enum_utils/enum_utils.dart';

class MiddleName
    extends FormzInput<String, TextFormFieldEmptyValidationType> {
  const MiddleName.pure(super.value) : super.pure();

  const MiddleName.dirty({String value = ''}) : super.dirty(value);

  @override
  validator(String value) {
    if (value.isEmpty) {
      return TextFormFieldEmptyValidationType.empty;
    }
    return null;
  }
}
