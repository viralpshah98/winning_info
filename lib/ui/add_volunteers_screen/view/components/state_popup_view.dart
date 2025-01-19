import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:winning_info/ui/add_volunteers_screen/add_volunteers_screen.dart';
import 'package:winning_info/utils/text_style_utils/text_style_utils.dart';

class StatePopupView extends StatelessWidget {
  const StatePopupView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15.r),
          topRight: Radius.circular(15.r),
        ),
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 16.w,
        vertical: 10.h,
      ),
      child: SingleChildScrollView(
        physics: const ClampingScrollPhysics(),
        child: Flex(
          direction: Axis.vertical,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Flex(
              direction: Axis.horizontal,
              children: [
                Expanded(
                  child: Text(
                    'Select State',
                    style: redhatDisplayBold.copyWith(
                      color: Colors.black,
                      fontSize: 16.sp,
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () => Get.back(),
                  icon: Container(
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.1),
                      shape: BoxShape.circle,
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.close_rounded,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SearchStateTextFormField(),
            SizedBox(height: 10.h),
            BlocBuilder<AddVolunteersScreenBloc, AddVolunteersScreenState>(
              buildWhen: (previous, current) =>
                  previous.stateList != current.stateList,
              builder: (context, state) {
                return SizedBox(
                  height: context.height * 0.3,
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: state.stateList.length,
                    itemBuilder: (context, index) {
                      final stateItem = state.stateList[index];
                      return ListTile(
                        onTap: () {
                          context.read<AddVolunteersScreenBloc>().add(
                                StateNameEvent(
                                  selectedStateModel: stateItem,
                                ),
                              );
                          Get.back();
                        },
                        title: Text(
                          stateItem.value.toString(),
                          style: redhatDisplayMedium.copyWith(
                            fontSize: 12.sp,
                            color: Colors.black,
                          ),
                        ),
                      );
                    },
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
