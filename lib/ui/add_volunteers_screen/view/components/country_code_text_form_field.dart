import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:winning_info/ui/add_volunteers_screen/add_volunteers_screen.dart';
import 'package:winning_info/utils/text_style_utils/text_style_utils.dart';
import 'package:winning_info/widgets/widgets.dart';

class CountryCodeTextFormField extends StatelessWidget {
  const CountryCodeTextFormField({super.key});

  @override
  Widget build(BuildContext context) {
    final addVolunteersScreenBloc=context.read<AddVolunteersScreenBloc>();
    return BlocBuilder<AddVolunteersScreenBloc, AddVolunteersScreenState>(
      buildWhen: (previous, current) =>
      previous.countryCode != current.countryCode,
      builder: (context, state) {
        return CommonTextFormFieldWidget(
          initialValue: state.countryCode.value,
          textStyle: redhatDisplayMedium.copyWith(
            fontSize: 14.sp,
            color: Colors.black,
          ),
          errorText: !state.countryCode.isPure && state.countryCode.isNotValid
              ? 'Please enter country code'
              : null,
          isReadOnly: true,
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
