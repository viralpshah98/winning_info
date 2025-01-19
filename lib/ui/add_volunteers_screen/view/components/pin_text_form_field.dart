import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:winning_info/ui/add_volunteers_screen/add_volunteers_screen.dart';
import 'package:winning_info/utils/text_style_utils/text_style_utils.dart';
import 'package:winning_info/widgets/widgets.dart';

class PinTextFormField extends StatelessWidget {
  const PinTextFormField({super.key});

  @override
  Widget build(BuildContext context) {
    final addVolunteersScreenBloc = context.read<AddVolunteersScreenBloc>();
    return BlocBuilder<AddVolunteersScreenBloc, AddVolunteersScreenState>(
      buildWhen: (previous, current) => previous.pinCode != current.pinCode,
      builder: (context, state) {
        return CommonTextFormFieldWidget(
          initialValue: state.pinCode.value,
          textStyle: redhatDisplayMedium.copyWith(
            fontSize: 14.sp,
            color: Colors.black,
          ),
          errorText: !state.pinCode.isPure && state.pinCode.isNotValid
              ? 'Please enter pin code'
              : null,
          hintText: 'Enter pin code',
          textInputAction: TextInputAction.done,
          textInputType: TextInputType.number,
          inputFormatter: [
            LengthLimitingTextInputFormatter(6),
          ],
          onChanged: (value) => addVolunteersScreenBloc.add(
            PinCodeEvent(pinCode: value),
          ),
        );
      },
    );
  }
}
