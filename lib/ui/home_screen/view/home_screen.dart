import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:winning_info/ui/birthday_screen/birthday_screen.dart';
import 'package:winning_info/ui/import_screen/import_screen.dart';
import 'package:winning_info/ui/login_screen/login_screen.dart';
import 'package:winning_info/ui/volunteers_screen/view/view.dart';
import 'package:winning_info/utils/enum_utils/enum_utils.dart';
import 'package:winning_info/utils/get_storage_utils/get_storage_utils.dart';
import 'package:winning_info/utils/text_style_utils/text_style_utils.dart';
import 'package:winning_info/utils/utils.dart';

class HomeScreen extends StatefulWidget {
  static const String route = '/home';

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Map<String, dynamic>> list = [
    {'name': 'Volunteers', 'icon': Icons.person_rounded},
    {'name': 'Birthdays', 'icon': Icons.cake},
    {'name': 'Marriage Anniversary', 'icon': Icons.celebration},
    {'name': 'Import', 'icon': Icons.import_export},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Utils().colorsUtils.colorRed,
          centerTitle: true,
          title: Text(
            'Home',
            style: redhatDisplayBold.copyWith(
              fontSize: 18.sp,
              color: Colors.white,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {
                GetStorageUtils.clearStorage();
                Get.offNamed(LoginScreen.route);
              },
              icon: Icon(
                Icons.logout,
                size: 24.r,
                color: Colors.white,
              ),
            )
          ]),
      body: SafeArea(
        child: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 8.h,
            crossAxisSpacing: 8.w,
            childAspectRatio: 1,
          ),
          shrinkWrap: true,
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
          physics: const ClampingScrollPhysics(),
          children: [
            ...list.map((element) {
              return InkWell(
                onTap: () {
                  switch (element['name']) {
                    case 'Volunteers':
                      Get.toNamed(VolunteersScreen.route);
                    case 'Birthdays':
                      Get.toNamed(
                        BirthdayScreen.route,
                        arguments: GreetingsType.birthday,
                      );
                    case 'Marriage Anniversary':
                      Get.toNamed(
                        BirthdayScreen.route,
                        arguments: GreetingsType.anniversary,
                      );
                    case 'Import':
                      Get.toNamed(
                        ImportScreen.route,
                      );
                      break;
                  }
                },
                child: Card(
                  clipBehavior: Clip.antiAlias,
                  elevation: 1.4.r,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                  color: Colors.white,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.r),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.w),
                      child: Flex(
                        direction: Axis.vertical,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            element['icon'] as IconData?,
                            color: Colors.black,
                            size: 42.r,
                          ),
                          SizedBox(
                            height: 16.h,
                          ),
                          Text(
                            element['name'] as String,
                            style: redhatDisplayBold.copyWith(
                              fontSize: 14.sp,
                              color: Utils().colorsUtils.colorGery2,
                            ),
                            textAlign: TextAlign.center,
                            // maxLines: 1,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            }).toList(),
          ],
        ),
      ),
    );
  }
}
