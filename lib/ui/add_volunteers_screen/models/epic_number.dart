import 'package:formz/formz.dart';
import 'package:winning_info/utils/enum_utils/enum_utils.dart';

class EpicNumber
    extends FormzInput<String, TextFormFieldEmptyValidationType> {
  const EpicNumber.pure(super.value) : super.pure();

  const EpicNumber.dirty({String value = ''}) : super.dirty(value);

  @override
  validator(String value) {
    if (value.isEmpty) {
      return TextFormFieldEmptyValidationType.empty;
    }
    return null;
  }
}
