import 'package:formz/formz.dart';
import 'package:winning_info/utils/enum_utils/enum_utils.dart';

class CountryCode
    extends FormzInput<String, TextFormFieldEmptyValidationType> {
  const CountryCode.pure(super.value) : super.pure();

  const CountryCode.dirty({String value = ''}) : super.dirty(value);

  @override
  validator(String value) {
    if (value.isEmpty) {
      return TextFormFieldEmptyValidationType.empty;
    }
    return null;
  }
}
