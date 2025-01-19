import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:winning_info/ui/add_volunteers_screen/add_volunteers_screen.dart';
import 'package:winning_info/utils/text_style_utils/text_style_utils.dart';
import 'package:winning_info/widgets/widgets.dart';

class MarriageTextFormField extends StatelessWidget {
  const MarriageTextFormField({super.key});

  @override
  Widget build(BuildContext context) {
    final addVolunteersScreenBloc=context.read<AddVolunteersScreenBloc>();
    return BlocBuilder<AddVolunteersScreenBloc, AddVolunteersScreenState>(
      buildWhen: (previous, current) =>
      previous.anniversary != current.anniversary,
      builder: (context, state) {
        return CommonTextFormFieldWidget(
          initialValue: state.anniversary,
          textStyle: redhatDisplayMedium.copyWith(
            fontSize: 14.sp,
            color: Colors.black,
          ),
          isReadOnly: true,
          onTap:() async {
            final anniversaryDate = await showDatePicker(
              firstDate: DateTime(1970),
              lastDate: DateTime.now(),
              initialDate: DateTime.now(),
              context: context,
            );
            if (anniversaryDate != null) {
              addVolunteersScreenBloc.add(
                MarriageAnniversaryEvent(
                  marriageAnniversary: DateFormat('dd/MM/yyyy').format(anniversaryDate),
                ),
              );
            }
          },
          hintText: 'Select marriage anniversary',
          textInputAction: TextInputAction.next,
          textInputType: TextInputType.visiblePassword,
          onChanged: (value) => addVolunteersScreenBloc.add(
            CountryCodeEvent(countryCode: value),
          ),
        );
      },
    );
  }
}
