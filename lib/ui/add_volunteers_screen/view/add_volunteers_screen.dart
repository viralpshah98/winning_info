import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:winning_info/models/models.dart';
import 'package:winning_info/ui/add_volunteers_screen/add_volunteers_screen.dart';

class AddVolunteerScreen extends StatelessWidget {
  static const String route = '/addVolunteer';

  const AddVolunteerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final volunteerTypeModel = Get.arguments as VolunteerTypeModel?;
    return BlocProvider<AddVolunteersScreenBloc>(
      create: (context) => AddVolunteersScreenBloc()
        ..add(
          SetVolunteerResponseModel(
            volunteerTypeModel: volunteerTypeModel,
          ),
        ),
      child: const AddVolunteerView(),
    );
  }
}
