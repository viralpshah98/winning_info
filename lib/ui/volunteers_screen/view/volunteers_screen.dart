import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:winning_info/ui/volunteers_screen/bloc/volunteers_bloc.dart';
import 'package:winning_info/ui/volunteers_screen/view/view.dart';

class VolunteersScreen extends StatelessWidget {
  static const String route = '/volunteers';

  const VolunteersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<VolunteersBloc>(
      create: (context) => VolunteersBloc()
        ..add(
          const GetVolunteersListEvent(),
        ),
      child: const VolunteersView(),
    );
  }
}
