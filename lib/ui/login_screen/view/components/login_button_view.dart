import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:winning_info/ui/login_screen/login_screen.dart';
import 'package:winning_info/utils/common_function_utils/common_function_utils.dart';
import 'package:winning_info/utils/text_style_utils/text_style_utils.dart';
import 'package:winning_info/utils/utils.dart';

class LoginButtonView extends StatelessWidget {
  const LoginButtonView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      buildWhen: (previous, current) => previous.isValid != current.isValid,
      builder: (context, state) {
        return SizedBox(
          height: context.height / 18,
          width: double.infinity,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Utils().colorsUtils.colorRed, // background
            ),
            onPressed: state.isValid
                ? () {
                    CommonFunctionUtils.hideKeyboard().then(
                      (value) => context.read<LoginBloc>().add(
                            const OnClickLoginEvent(),
                          ),
                    );
                  }
                : null,
            child: Text(
              'Login',
              style: redhatDisplayMedium.copyWith(
                fontSize: 14.sp,
                color: Colors.white,
              ),
            ),
          ),
        );
      },
    );
  }
}
