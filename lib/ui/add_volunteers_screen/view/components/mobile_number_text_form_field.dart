import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:winning_info/ui/add_volunteers_screen/add_volunteers_screen.dart';
import 'package:winning_info/utils/text_style_utils/text_style_utils.dart';
import 'package:winning_info/widgets/widgets.dart';

class MobileNumberTextFormField extends StatelessWidget {
  const MobileNumberTextFormField({super.key});

  @override
  Widget build(BuildContext context) {
    final addVolunteersScreenBloc = context.read<AddVolunteersScreenBloc>();
    return BlocBuilder<AddVolunteersScreenBloc, AddVolunteersScreenState>(
      buildWhen: (previous, current) =>
          previous.mobileNumber != current.mobileNumber,
      builder: (context, state) {
        return CommonTextFormFieldWidget(
          initialValue: state.mobileNumber.value,
          textStyle: redhatDisplayMedium.copyWith(
            fontSize: 14.sp,
            color: Colors.black,
          ),
          errorText: !state.mobileNumber.isPure && state.mobileNumber.isNotValid
              ? 'Please enter mobile number'
              : null,
          hintText: 'Enter mobile number',
          inputFormatter: [
            LengthLimitingTextInputFormatter(10),
          ],
          textInputAction: TextInputAction.next,
          textInputType: TextInputType.number,
          onChanged: (value) => addVolunteersScreenBloc.add(
            MobileNumberEvent(mobileNumber: value),
          ),
        );
      },
    );
  }
}
