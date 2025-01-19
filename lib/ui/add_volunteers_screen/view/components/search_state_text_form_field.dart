import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:winning_info/ui/add_volunteers_screen/add_volunteers_screen.dart';
import 'package:winning_info/utils/text_style_utils/text_style_utils.dart';
import 'package:winning_info/widgets/common_text_form_field_widget/common_text_form_field_widget.dart';

class SearchStateTextFormField extends StatelessWidget {
  const SearchStateTextFormField({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddVolunteersScreenBloc, AddVolunteersScreenState>(
      buildWhen: (previous, current) => previous.searchText != current.searchText,
      builder: (context, state) {
        return Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 16.w,
            vertical: 12.h,
          ),
          child:
          CommonTextFormFieldWidget(
            initialValue: state.searchText,
            prefixIcon: Icon(
              Icons.search_rounded,
              color: Colors.black.withOpacity(0.5),
              size: 24.r,
            ),
            textStyle: redhatDisplayMedium.copyWith(
              fontSize: 14.sp,
              color: Colors.black,
            ),
            textInputType: TextInputType.text,
            textInputAction: TextInputAction.search,
            onChanged: (value) => context
                .read<AddVolunteersScreenBloc>()
                .add(SearchTextEvent(searchText: value)),
          ),
        );
      },
    );
  }
}
