import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:winning_info/ui/add_volunteers_screen/add_volunteers_screen.dart';
import 'package:winning_info/utils/text_style_utils/text_style_utils.dart';
import 'package:winning_info/widgets/widgets.dart';

class AddressTextFormField extends StatelessWidget {
  const AddressTextFormField({super.key});

  @override
  Widget build(BuildContext context) {
    final addVolunteersScreenBloc=context.read<AddVolunteersScreenBloc>();
    return BlocBuilder<AddVolunteersScreenBloc, AddVolunteersScreenState>(
      buildWhen: (previous, current) =>
      previous.address != current.address,
      builder: (context, state) {
        return CommonTextFormFieldWidget(
          initialValue: state.address.value,
          textStyle: redhatDisplayMedium.copyWith(
            fontSize: 14.sp,
            color: Colors.black,
          ),
          errorText: !state.address.isPure && state.address.isNotValid
              ? 'Please enter address'
              : null,
          hintText: 'Enter address',
          textInputAction: TextInputAction.next,
          textInputType: TextInputType.visiblePassword,
          onChanged: (value) => addVolunteersScreenBloc.add(
            AddressEvent(address: value),
          ),
        );
      },
    );
  }
}
