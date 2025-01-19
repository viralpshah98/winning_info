import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:winning_info/constants/constants.dart';
import 'package:winning_info/ui/birthday_screen/birthday_screen.dart';
import 'package:winning_info/utils/assets_utils/assets_utils.dart';
import 'package:winning_info/utils/common_function_utils/common_function_utils.dart';
import 'package:winning_info/utils/enum_utils/enum_utils.dart';
import 'package:winning_info/utils/text_style_utils/text_style_utils.dart';
import 'package:winning_info/utils/utils.dart';
import 'package:winning_info/widgets/widgets.dart';

class BirthdayView extends StatelessWidget {
  const BirthdayView({
    super.key,
  });


  @override
  Widget build(BuildContext buildContext) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Utils().colorsUtils.colorRed,
        centerTitle: true,
        title: BlocBuilder<BirthdayScreenBloc, BirthdayScreenState>(
          buildWhen: (previous, current) => previous.greetingsType!=current.greetingsType,
  builder: (context, state) {
    return Text(
          state.greetingsType == GreetingsType.birthday ? 'Birthday' : 'Anniversary',
          style: redhatDisplayBold.copyWith(
            fontSize: 18.sp,
            color: Colors.white,
          ),
        );
  },
),
      ),
      body: Flex(
        direction: Axis.vertical,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SearchTextFormField(),
          Expanded(
            child: BlocBuilder<BirthdayScreenBloc, BirthdayScreenState>(
              buildWhen: (previous, current) =>
                  previous.volunteerResponseModelList !=
                      current.volunteerResponseModelList ||
                  previous.apiStatus != current.apiStatus,
              builder: (context, state) {
                return state.apiStatus == ApiStatus.loading
                    ? Center(
                        child: CircularProgressIndicator(
                          color: Utils().colorsUtils.colorRed,
                        ),
                      )
                    : state.volunteerResponseModelList.isNotEmpty
                        ? ListView.builder(
                            physics: const ClampingScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: state.volunteerResponseModelList.length,
                            itemBuilder: (context, index) {
                              final volunteerResponseModel =
                                  state.volunteerResponseModelList[index];
                              return ListTile(
                                onTap: () {
                                  String message =
                                      '$volutneerMessage ${volunteerResponseModel.firstName} ${volunteerResponseModel.lastName},${state.greetingsType == GreetingsType.birthday ? birthDayMessage : anniversaryMessage}';
                                  String uri =
                                      "whatsapp://send?phone=91${volunteerResponseModel.mobile}&text=$message";
                                  CommonFunctionUtils.openURL(uri);
                                },
                                title: Text(
                                  '${volunteerResponseModel.firstName} ${volunteerResponseModel.lastName}',
                                  style: redhatDisplayMedium.copyWith(
                                    fontSize: 14.sp,
                                    color: Colors.black,
                                  ),
                                ),
                                subtitle: Text(
                                  '${volunteerResponseModel.mobile}',
                                  style: redhatDisplayMedium.copyWith(
                                    fontSize: 14.sp,
                                    color: Colors.black.withOpacity(0.7),
                                  ),
                                ),
                                trailing: SvgPicture.asset(
                                  AssetsUtils.whatsappLogo,
                                  height: 24.r,
                                  width: 24.r,
                                ),
                              );
                              /*Slidable(
                        key: const ValueKey(0),
                        endActionPane: ActionPane(
                          motion: const ScrollMotion(),
                          children: [
                            SlidableAction(
                              flex: 1,
                              spacing: 0,
                              // An action can be bigger than the others.
                              onPressed: (context) => volunteerBloc.add(
                                OnClickDeleteEvent(
                                  volunteerResponseModel:
                                  volunteerResponseModel,
                                ),
                              ),
                              backgroundColor: Colors.red,
                              foregroundColor: Colors.white,
                              icon: Icons.delete,
                              label: 'Delete',
                            ),
                            SlidableAction(
                              flex: 1,
                              spacing: 0,
                              onPressed: (context) => Get.toNamed(
                                AddVolunteerScreen.route,
                                arguments: VolunteerTypeModel(
                                  volunteerType: VolunteerType.update,
                                  volunteerResponseModel:
                                  volunteerResponseModel,
                                ),
                              ),
                              backgroundColor: Colors.green,
                              foregroundColor: Colors.white,
                              icon: Icons.edit,
                              label: 'Save',
                            ),
                          ],
                        ),
                        child: ListTile(
                          title: Text(
                            '${volunteerResponseModel.firstName} ${volunteerResponseModel.lastName}',
                            style: redhatDisplayMedium.copyWith(
                              fontSize: 14.sp,
                              color: Colors.black,
                            ),
                          ),
                          subtitle: Text(
                            '${volunteerResponseModel.mobile}',
                            style: redhatDisplayMedium.copyWith(
                              fontSize: 14.sp,
                              color: Colors.black.withOpacity(0.7),
                            ),
                          ),
                        ),
                      );*/
                            })
                        : const NoDataFoundWidget();
              },
            ),
          ),
        ],
      ),
    );
  }
}
