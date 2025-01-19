import 'package:formz/formz.dart';
import 'package:winning_info/utils/enum_utils/enum_utils.dart';

class CityName
    extends FormzInput<String, TextFormFieldEmptyValidationType> {
  const CityName.pure(super.value) : super.pure();

  const CityName.dirty({String value = ''}) : super.dirty(value);

  @override
  validator(String value) {
    if (value.isEmpty) {
      return TextFormFieldEmptyValidationType.empty;
    }
    return null;
  }
}
