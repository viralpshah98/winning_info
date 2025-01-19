import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:winning_info/ui/volunteers_screen/bloc/volunteers_bloc.dart';
import 'package:winning_info/utils/text_style_utils/text_style_utils.dart';
import 'package:winning_info/widgets/common_text_form_field_widget/common_text_form_field_widget.dart';

class SearchTextFormField extends StatelessWidget {
  const SearchTextFormField({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<VolunteersBloc, VolunteersState>(
      buildWhen: (previous, current) => previous.search != current.search,
      builder: (context, state) {
        return Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 16.w,
            vertical: 12.h,
          ),
          child:
          CommonTextFormFieldWidget(
            initialValue: state.search,
            prefixIcon: Icon(
              Icons.search_rounded,
              color: Colors.black.withOpacity(0.5),
              size: 24.r,
            ),
            textStyle: redhatDisplayMedium.copyWith(
              fontSize: 14.sp,
              color: Colors.black,
            ),
            hintText: "Search by name/email/phone number",
            textInputType: TextInputType.text,
            textInputAction: TextInputAction.search,
            onChanged: (value) => context
                .read<VolunteersBloc>()
                .add(SearchTextEvent(searchText: value)),
          ),
        );
      },
    );
  }
}
