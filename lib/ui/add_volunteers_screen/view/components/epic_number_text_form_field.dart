import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:winning_info/ui/add_volunteers_screen/add_volunteers_screen.dart';
import 'package:winning_info/utils/text_style_utils/text_style_utils.dart';
import 'package:winning_info/widgets/widgets.dart';

class EpicNumberTextFormField extends StatelessWidget {
  const EpicNumberTextFormField({super.key});

  @override
  Widget build(BuildContext context) {
    final addVolunteersScreenBloc=context.read<AddVolunteersScreenBloc>();
    return BlocBuilder<AddVolunteersScreenBloc, AddVolunteersScreenState>(
      buildWhen: (previous, current) =>
      previous.epicNumber != current.epicNumber,
      builder: (context, state) {
        return CommonTextFormFieldWidget(
          initialValue: state.epicNumber.value,
          textStyle: redhatDisplayMedium.copyWith(
            fontSize: 14.sp,
            color: Colors.black,
          ),
          errorText: !state.epicNumber.isPure && state.epicNumber.isNotValid
              ? 'Please enter epic number'
              : null,
          hintText: 'Enter epic number',
          textInputAction: TextInputAction.next,
          textInputType: TextInputType.text,
          inputFormatter: [
            LengthLimitingTextInputFormatter(10)
          ],
          onChanged: (value) => addVolunteersScreenBloc.add(
            EpicNumberEvent(epicNumber: value),
          ),
        );
      },
    );
  }
}
