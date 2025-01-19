import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get/get.dart';
import 'package:winning_info/models/models.dart';
import 'package:winning_info/ui/add_volunteers_screen/add_volunteers_screen.dart';
import 'package:winning_info/ui/volunteers_screen/bloc/volunteers_bloc.dart';
import 'package:winning_info/ui/volunteers_screen/view/components/components.dart';
import 'package:winning_info/utils/enum_utils/enum_utils.dart';
import 'package:winning_info/utils/text_style_utils/text_style_utils.dart';
import 'package:winning_info/utils/utils.dart';
import 'package:winning_info/widgets/widgets.dart';

class VolunteersView extends StatelessWidget {
  const VolunteersView({super.key});

  @override
  Widget build(BuildContext context) {
    final volunteerBloc = context.read<VolunteersBloc>();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Utils().colorsUtils.colorRed,
        centerTitle: true,
        title: Text(
          'Volunteers',
          style: redhatDisplayBold.copyWith(
            fontSize: 18.sp,
            color: Colors.white,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final result = await Get.toNamed(
            AddVolunteerScreen.route,
            arguments: const VolunteerTypeModel(),
          );
          if (result != null) {
            volunteerBloc.add(const GetVolunteersListEvent());
          }
        },
        backgroundColor: Colors.red,
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      body: Flex(
        direction: Axis.vertical,
        children: [
          const SearchTextFormField(),
          BlocBuilder<VolunteersBloc, VolunteersState>(
            buildWhen: (previous, current) =>
                previous.apiStatus != current.apiStatus,
            builder: (context, state) {
              return state.apiStatus == ApiStatus.loading
                  ? Expanded(
                      child: Center(
                        child: CircularProgressIndicator(
                          color: Utils().colorsUtils.colorRed,
                        ),
                      ),
                    )
                  : Expanded(
                      child: BlocBuilder<VolunteersBloc, VolunteersState>(
                        buildWhen: (previous, current) =>
                            previous.volunteerResponseModelList !=
                            current.volunteerResponseModelList,
                        builder: (context, state) {
                          return state.volunteerResponseModelList.isNotEmpty
                              ? ListView.builder(
                                  physics: const ClampingScrollPhysics(),
                                  shrinkWrap: true,
                                  itemCount:
                                      state.volunteerResponseModelList.length,
                                  itemBuilder: (context, index) {
                                    final volunteerResponseModel =
                                        state.volunteerResponseModelList[index];
                                    return Slidable(
                                      key: const ValueKey(0),
                                      endActionPane: ActionPane(
                                        motion: const ScrollMotion(),
                                        children: [
                                          SlidableAction(
                                            flex: 1,
                                            spacing: 0,
                                            // An action can be bigger than the others.
                                            onPressed: (context) =>
                                                volunteerBloc.add(
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
                                                volunteerType:
                                                    VolunteerType.update,
                                                volunteerResponseModel:
                                                    volunteerResponseModel,
                                              ),
                                            ),
                                            backgroundColor: Colors.green,
                                            foregroundColor: Colors.white,
                                            icon: Icons.edit,
                                            label: 'Edit',
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
                                            color:
                                                Colors.black.withOpacity(0.7),
                                          ),
                                        ),
                                      ),
                                    );
                                  })
                              : const NoDataFoundWidget();
                        },
                      ),
                    );
            },
          ),
        ],
      ),
    );
  }
}
