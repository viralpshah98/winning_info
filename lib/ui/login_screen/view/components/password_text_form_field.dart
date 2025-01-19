import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:winning_info/ui/login_screen/login_screen.dart';
import 'package:winning_info/utils/text_style_utils/text_style_utils.dart';
import 'package:winning_info/widgets/widgets.dart';

class PasswordTextFormField extends StatelessWidget {
  const PasswordTextFormField({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      buildWhen: (previous, current) =>
          previous.password != current.password ||
          previous.isPasswordVisible != current.isPasswordVisible,
      builder: (context, state) {
        return CommonTextFormFieldWidget(
          initialValue: state.password.value,
          obscureText: !state.isPasswordVisible,
          textStyle: redhatDisplayMedium.copyWith(
            fontSize: 14.sp,
            color: Colors.black,
          ),
          hintText: 'Enter password',
          onFieldSubmitted: (value) {
            context.read<LoginBloc>().add(const OnClickLoginEvent());
          },
          errorText: !state.password.isPure && state.password.isNotValid
              ? 'Please enter password'
              : null,
          textInputAction: TextInputAction.done,
          textInputType: TextInputType.visiblePassword,
          onChanged: (value) => context.read<LoginBloc>().add(
                PasswordEvent(password: value),
              ),
          suffixIcon: IconButton(
            icon: Icon(
              state.isPasswordVisible ? Icons.visibility : Icons.visibility_off,
              size: 24.r,
              color: Colors.black.withOpacity(0.5),
            ),
            onPressed: () => context.read<LoginBloc>().add(
                  const TogglePasswordVisibilityEvent(),
                ),
          ),
        );
      },
    );
  }
}
