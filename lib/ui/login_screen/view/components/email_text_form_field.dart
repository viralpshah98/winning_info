import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:winning_info/ui/login_screen/login_screen.dart';
import 'package:winning_info/utils/text_style_utils/text_style_utils.dart';
import 'package:winning_info/widgets/widgets.dart';

class EmailTextFormField extends StatelessWidget {
  const EmailTextFormField({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      buildWhen: (previous, current) =>
          previous.emailAddress != current.emailAddress,
      builder: (context, state) {
        return CommonTextFormFieldWidget(
          initialValue: state.emailAddress.value,
          textStyle: redhatDisplayMedium.copyWith(
            fontSize: 14.sp,
            color: Colors.black,
          ),
          errorText: !state.emailAddress.isPure && state.emailAddress.isNotValid
              ? 'Please enter valid email address'
              : null,
          hintText: 'Enter email address',
          textInputAction: TextInputAction.next,
          textInputType: TextInputType.emailAddress,
          onChanged: (value) => context
              .read<LoginBloc>()
              .add(EmailAddressEvent(emailAddress: value)),
        );
      },
    );
  }
}
