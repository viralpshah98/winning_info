import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:winning_info/ui/add_volunteers_screen/add_volunteers_screen.dart';
import 'package:winning_info/ui/add_volunteers_screen/view/components/state_popup_view.dart';
import 'package:winning_info/utils/text_style_utils/text_style_utils.dart';
import 'package:winning_info/widgets/widgets.dart';

class StateTextFormField extends StatelessWidget {
  const StateTextFormField({super.key});

  @override
  Widget build(BuildContext context) {
    final addVolunteersScreenBloc = context.read<AddVolunteersScreenBloc>();
    return BlocBuilder<AddVolunteersScreenBloc, AddVolunteersScreenState>(
      buildWhen: (previous, current) => previous.stateName != current.stateName,
      builder: (context, state) {
        return CommonTextFormFieldWidget(
          initialValue: state.stateName.value,
          textStyle: redhatDisplayMedium.copyWith(
            fontSize: 14.sp,
            color: Colors.black,
          ),
          errorText: !state.stateName.isPure && state.stateName.isNotValid
              ? 'Please select state'
              : null,
          isReadOnly: true,
          onTap: () => Get.bottomSheet(
            BlocProvider.value(
              value: addVolunteersScreenBloc..add(const GetStateListEvent()),
              child: const StatePopupView(),
            ),
          ),
          hintText: 'Select state',
          textInputAction: TextInputAction.next,
          textInputType: TextInputType.visiblePassword,
          onChanged: (value) => addVolunteersScreenBloc.add(
            StateNameEvent(selectedStateModel: value),
          ),
        );
      },
    );
  }
}
