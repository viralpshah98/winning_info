import 'package:formz/formz.dart';
import 'package:winning_info/utils/enum_utils/enum_utils.dart';

class Birthday
    extends FormzInput<String, TextFormFieldEmptyValidationType> {
  const Birthday.pure(super.value) : super.pure();

  const Birthday.dirty({String value = ''}) : super.dirty(value);

  @override
  validator(String value) {
    if (value.isEmpty) {
      return TextFormFieldEmptyValidationType.empty;
    }
    return null;
  }
}
