import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:winning_info/ui/birthday_screen/birthday_screen.dart';
import 'package:winning_info/utils/enum_utils/enum_utils.dart';

class BirthdayScreen extends StatelessWidget {
  static const String route = '/birthday';

  const BirthdayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final greetingsType = Get.arguments as GreetingsType?;
    return BlocProvider<BirthdayScreenBloc>(
      create: (context) => BirthdayScreenBloc()
        ..add(
           GetVolunteerListEvent(greetingsType: greetingsType ?? GreetingsType.birthday),
        ),
      child: BirthdayView(),
    );
  }
}
