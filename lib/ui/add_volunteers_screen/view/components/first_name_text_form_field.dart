import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:winning_info/ui/add_volunteers_screen/add_volunteers_screen.dart';
import 'package:winning_info/utils/text_style_utils/text_style_utils.dart';
import 'package:winning_info/widgets/widgets.dart';

class FirstNameTextFormField extends StatelessWidget {
  const FirstNameTextFormField({super.key});

  @override
  Widget build(BuildContext context) {
    final addVolunteersScreenBloc=context.read<AddVolunteersScreenBloc>();
    return BlocBuilder<AddVolunteersScreenBloc, AddVolunteersScreenState>(
      buildWhen: (previous, current) =>
      previous.firstName != current.firstName,
      builder: (context, state) {
        return CommonTextFormFieldWidget(
          initialValue: state.firstName.value,
          textStyle: redhatDisplayMedium.copyWith(
            fontSize: 14.sp,
            color: Colors.black,
          ),
          errorText: !state.firstName.isPure && state.firstName.isNotValid
              ? 'Please enter first name'
              : null,
          hintText: 'Enter first name',
          textInputAction: TextInputAction.next,
          textInputType: TextInputType.text,
          onChanged: (value) => addVolunteersScreenBloc.add(
            FirstNameEvent(firstName: value),
          ),
        );
      },
    );
  }
}
