import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:winning_info/ui/add_volunteers_screen/add_volunteers_screen.dart';
import 'package:winning_info/utils/enum_utils/enum_utils.dart';
import 'package:winning_info/utils/text_style_utils/text_style_utils.dart';
import 'package:winning_info/utils/utils.dart';

class AddVolunteerView extends StatelessWidget {
  const AddVolunteerView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Utils().colorsUtils.colorRed,
          centerTitle: true,
          title: BlocBuilder<AddVolunteersScreenBloc, AddVolunteersScreenState>(
            buildWhen: (previous, current) =>
                previous.volunteerTypeModel != current.volunteerTypeModel,
            builder: (context, state) {
              return Text(
                state.volunteerTypeModel?.volunteerType == VolunteerType.add
                    ? 'Add Volunteer'
                    : 'Update Volunteer',
                style: redhatDisplayBold.copyWith(
                  fontSize: 18.sp,
                  color: Colors.white,
                ),
              );
            },
          )),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            padding: EdgeInsets.symmetric(
              horizontal: 16.w,
              vertical: 12.h,
            ),
            child: ConstrainedBox(
              constraints: constraints.copyWith(
                minHeight: constraints.maxHeight,
                maxHeight: double.infinity,
              ),
              child: BlocBuilder<AddVolunteersScreenBloc,
                  AddVolunteersScreenState>(
                buildWhen: (previous, current) =>
                    previous.volunteerTypeModel != current.volunteerTypeModel,
                builder: (context, state) {
                  return Flex(
                    direction: Axis.vertical,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        state.volunteerTypeModel?.volunteerType ==
                                VolunteerType.add
                            ? 'Add volunteer details'
                            : 'Update volunteer details',
                        style: redhatDisplayBold.copyWith(
                          fontSize: 14.sp,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 12.h),
                      const FirstNameTextFormField(),
                      SizedBox(height: 12.h),
                      const MiddleTextFormField(),
                      SizedBox(height: 12.h),
                      const LastNameTextFormField(),
                      SizedBox(height: 12.h),
                      Flex(
                        direction: Axis.horizontal,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Expanded(
                              flex: 1, child: CountryCodeTextFormField()),
                          SizedBox(width: 12.w),
                          const Expanded(
                              flex: 6, child: MobileNumberTextFormField()),
                        ],
                      ),
                      SizedBox(height: 12.h),
                      const EmailTextFormField(),
                      SizedBox(height: 12.h),
                      const EpicNumberTextFormField(),
                      SizedBox(height: 12.h),
                      const BirthdayTextFormField(),
                      SizedBox(height: 12.h),
                      const MarriageTextFormField(),
                      SizedBox(height: 12.h),
                      const AddressTextFormField(),
                      SizedBox(height: 12.h),
                      const StateTextFormField(),
                      SizedBox(height: 12.h),
                      const CityTextFormField(),
                      SizedBox(height: 12.h),
                      const PinTextFormField(),
                      SizedBox(height: 12.h),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Utils().colorsUtils.colorRed,
                          fixedSize: Size(
                            context.width,
                            40.h,
                          ),
                        ),
                        onPressed: () =>
                            context.read<AddVolunteersScreenBloc>().add(
                                  const OnClickAddEvent(),
                                ),
                        child: Text(
                          state.volunteerTypeModel?.volunteerType ==
                                  VolunteerType.add
                              ? 'Add'
                              : 'Update',
                          style: redhatDisplayMedium.copyWith(
                            fontSize: 14.sp,
                            color: Colors.white,
                          ),
                        ),
                      )
                    ],
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
