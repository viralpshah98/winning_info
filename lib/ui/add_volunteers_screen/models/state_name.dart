import 'package:formz/formz.dart';
import 'package:winning_info/utils/enum_utils/enum_utils.dart';

class StateName
    extends FormzInput<String, TextFormFieldEmptyValidationType> {
  const StateName.pure(super.value) : super.pure();

  const StateName.dirty({String value = ''}) : super.dirty(value);

  @override
  validator(String value) {
    if (value.isEmpty) {
      return TextFormFieldEmptyValidationType.empty;
    }
    return null;
  }
}
