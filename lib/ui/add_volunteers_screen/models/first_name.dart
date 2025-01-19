import 'package:formz/formz.dart';
import 'package:winning_info/utils/enum_utils/enum_utils.dart';

class FirstName
    extends FormzInput<String, TextFormFieldEmptyValidationType> {
  const FirstName.pure(super.value) : super.pure();

  const FirstName.dirty({String value = ''}) : super.dirty(value);

  @override
  validator(String value) {
    if (value.isEmpty) {
      return TextFormFieldEmptyValidationType.empty;
    }
    return null;
  }
}
