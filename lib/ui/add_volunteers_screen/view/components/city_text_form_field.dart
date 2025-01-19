import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:winning_info/ui/add_volunteers_screen/add_volunteers_screen.dart';
import 'package:winning_info/utils/text_style_utils/text_style_utils.dart';
import 'package:winning_info/widgets/widgets.dart';

class CityTextFormField extends StatelessWidget {
  const CityTextFormField({super.key});

  @override
  Widget build(BuildContext context) {
    final addVolunteersScreenBloc=context.read<AddVolunteersScreenBloc>();
    return BlocBuilder<AddVolunteersScreenBloc, AddVolunteersScreenState>(
      buildWhen: (previous, current) =>
      previous.cityName != current.cityName,
      builder: (context, state) {
        return CommonTextFormFieldWidget(
          initialValue: state.cityName.value,
          textStyle: redhatDisplayMedium.copyWith(
            fontSize: 14.sp,
            color: Colors.black,
          ),
          errorText: !state.cityName.isPure && state.cityName.isNotValid
              ? 'Please enter city name'
              : null,
          hintText: 'Enter city',
          textInputAction: TextInputAction.next,
          textInputType: TextInputType.text,
          onChanged: (value) => addVolunteersScreenBloc.add(
            CityNameEvent(cityName: value),
          ),
        );
      },
    );
  }
}
