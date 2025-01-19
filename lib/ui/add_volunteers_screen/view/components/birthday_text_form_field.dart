import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:winning_info/ui/add_volunteers_screen/add_volunteers_screen.dart';
import 'package:winning_info/utils/text_style_utils/text_style_utils.dart';
import 'package:winning_info/widgets/widgets.dart';

class BirthdayTextFormField extends StatelessWidget {
  const BirthdayTextFormField({super.key});

  @override
  Widget build(BuildContext context) {
    final addVolunteersScreenBloc = context.read<AddVolunteersScreenBloc>();
    return BlocBuilder<AddVolunteersScreenBloc, AddVolunteersScreenState>(
      buildWhen: (previous, current) => previous.birthday != current.birthday,
      builder: (context, state) {
        return CommonTextFormFieldWidget(
          initialValue: state.birthday.value,
          textStyle: redhatDisplayMedium.copyWith(
            fontSize: 14.sp,
            color: Colors.black,
          ),
          isReadOnly: true,
          onTap: () async {
            final birthday = await showDatePicker(
              firstDate: DateTime(1970),
              lastDate: DateTime.now(),
              initialDate: DateTime.now(),
              context: context,
            );
            if (birthday != null) {
              addVolunteersScreenBloc.add(
                BirthdayEvent(
                  birthDay: DateFormat('dd/MM/yyyy').format(birthday),
                ),
              );
            }
          },
          errorText: !state.birthday.isPure && state.birthday.isNotValid
              ? 'Please enter birthday'
              : null,
          hintText: 'Select birthday',
          textInputAction: TextInputAction.next,
          textInputType: TextInputType.visiblePassword,
          onChanged: (value) => addVolunteersScreenBloc.add(
            BirthdayEvent(birthDay: value),
          ),
        );
      },
    );
  }
}
