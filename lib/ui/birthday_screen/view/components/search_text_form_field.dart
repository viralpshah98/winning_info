import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:winning_info/ui/birthday_screen/birthday_screen.dart';
import 'package:winning_info/utils/text_style_utils/text_style_utils.dart';
import 'package:winning_info/widgets/widgets.dart';

class SearchTextFormField extends StatelessWidget {
  const SearchTextFormField({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BirthdayScreenBloc, BirthdayScreenState>(
      buildWhen: (previous, current) =>
      previous.searchText != current.searchText,
      builder: (context, state) {
        return Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 16.w,
            vertical: 12.h,
          ),
          child: CommonTextFormFieldWidget(
            initialValue: state.searchText,
            textStyle: redhatDisplayMedium.copyWith(
              fontSize: 14.sp,
              color: Colors.black,
            ),
            suffixIcon: Icon(
              Icons.calendar_today,
              size: 24.r,
              color: Colors.black,
            ),
            // onChanged: (value) =>
            isReadOnly: true,
            onTap: () async {
              final selectedDate = await showDatePicker(
                context: context,
                initialDate: state.searchText.isNotEmpty
                    ? DateFormat('dd/MM/yyyy').parse(state.searchText)
                    : DateTime.now(),
                firstDate: DateTime(1900, 8),
                lastDate: DateTime.now(),
              );

              if (selectedDate != null) {
                context.read<BirthdayScreenBloc>().add(
                  FilterOnDateChangeEvent(
                    selectedDate:
                    DateFormat('dd/MM/yyyy').format(selectedDate),
                  ),
                );
              }
            },
            onChanged: (value) {},
          ),
        );
      },
    );
  }
}
