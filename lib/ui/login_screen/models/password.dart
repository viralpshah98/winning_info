import 'package:formz/formz.dart';
import 'package:winning_info/utils/enum_utils/enum_utils.dart';

class Password extends FormzInput<String, TextFormFieldEmptyValidationType> {
  const Password.pure(super.value) : super.pure();

  const Password.dirty({String value = ''}) : super.dirty(value);

  @override
  TextFormFieldEmptyValidationType? validator(String value) {
    return value.isEmpty ? TextFormFieldEmptyValidationType.empty : null;
  }
}
