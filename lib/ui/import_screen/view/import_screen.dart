import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:winning_info/ui/import_screen/import_screen.dart';

class ImportScreen extends StatelessWidget {
  static const String route='/import';
  const ImportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ImportBloc>(
      create: (context) => ImportBloc(),
      child: const ImportView(),
    );
  }
}
