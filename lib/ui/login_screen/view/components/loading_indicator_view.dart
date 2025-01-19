import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:winning_info/ui/login_screen/bloc/login_bloc.dart';
import 'package:winning_info/utils/enum_utils/enum_utils.dart';
import 'package:winning_info/utils/utils.dart';

class LoadingIndicatorView extends StatelessWidget {
  const LoadingIndicatorView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      buildWhen: (previous, current) => previous.apiStatus != current.apiStatus,
      builder: (context, state) {
        return state.apiStatus == ApiStatus.loading
            ? Center(
                child: CircularProgressIndicator(
                  color: Utils().colorsUtils.colorRed,
                ),
              )
            : const SizedBox.shrink();
      },
    );
  }
}
