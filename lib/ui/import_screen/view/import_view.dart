import 'dart:io';

import 'package:device_info/device_info.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:winning_info/ui/import_screen/import_screen.dart';
import 'package:winning_info/utils/text_style_utils/text_style_utils.dart';
import 'package:winning_info/utils/utils.dart';

class ImportView extends StatelessWidget {
  const ImportView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Utils().colorsUtils.colorRed,
        centerTitle: true,
        title: Text(
          'Import',
          style: redhatDisplayBold.copyWith(
            fontSize: 18.sp,
            color: Colors.white,
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 16.w,
            vertical: 12.h,
          ),
          child: Flex(
            direction: Axis.vertical,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'You can download templates and easily update and use it. Click on Download Below.',
                style: redhatDisplayMedium.copyWith(
                  fontSize: 18.sp,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 12.h,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Utils().colorsUtils.colorRed, // background
                ),
                onPressed: () {
                  launchUrl(
                    Uri.parse('https://winninginfo.in/docs/volunteers.xlsx'),
                  );
                },
                child: Text(
                  'Download',
                  style: redhatDisplayMedium.copyWith(
                    fontSize: 14.sp,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                height: 12.h,
              ),
              Text(
                'You can upload your updated excel here.',
                style: redhatDisplayMedium.copyWith(
                  fontSize: 18.sp,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 12.h,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Utils().colorsUtils.colorRed, // background
                ),
                onPressed: () async {
                  final androidVersion = await DeviceInfoPlugin().androidInfo;
                  late PermissionStatus permission;
                  if (androidVersion.version.sdkInt > 32) {
                    permission = await Permission.photos.status;
                  } else {
                    permission = await Permission.storage.status;
                  }

                  print('permission status::: $permission');
                  if (permission.isGranted) {
                    FilePickerResult? file =
                        await FilePicker.platform.pickFiles();
                    if (file != null) {
                      context.read<ImportBloc>().add(
                            UploadFileEvent(
                              file: File(file.files.single.path!),
                            ),
                          );
                    }
                  } else if (permission.isDenied) {
                    if (androidVersion.version.sdkInt > 32) {
                      permission = await Permission.photos.request();
                    } else {
                      permission = await Permission.storage.request();
                    }
                  } else if (permission.isPermanentlyDenied) {
                    openAppSettings();
                  }
                },
                child: Text(
                  'Upload',
                  style: redhatDisplayMedium.copyWith(
                    fontSize: 14.sp,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
