import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:winning_info/ui/login_screen/login_screen.dart';
import 'package:winning_info/utils/assets_utils/assets_utils.dart';
import 'package:winning_info/utils/utils.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {

    var media = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Positioned(
            top: media.height / 2,
            child: Container(
              height: media.height / 12,
              width: media.width * 0.95,
              decoration: BoxDecoration(
                  color: Utils().colorsUtils.colorGeryLight,
                  borderRadius: BorderRadius.circular(25)),
            ),
          ),
          Positioned(
            height: media.height,
            top: media.height / 16,
            child: Container(
              width: media.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Utils().colorsUtils.colorWhite),
              child: Align(
                alignment: Alignment.topCenter,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: media.width * 0.15),
                    SizedBox(
                        height: media.height / 7,
                        child: Image.asset(
                          AssetsUtils.appLogoImage,
                          fit: BoxFit.fill,
                        )),
                    SizedBox(height: media.width * 0.05),
                    const Text('Welcome!',
                        style: TextStyle(
                            // fontFamily: Constantfont.redhat,
                            fontSize: 24,
                            fontWeight: FontWeight.w500)),
                    SizedBox(height: media.width * 0.02),
                    Text('Login to Your Account',
                        style: TextStyle(
                          // fontFamily: Constantfont.redhat,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Utils().colorsUtils.colorGery2,
                        )),
                    SizedBox(height: media.width * 0.05),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const EmailTextFormField(),
                          SizedBox(height: 12.h),
                          const PasswordTextFormField(),
                          SizedBox(height: 12.h),
                          const LoginButtonView(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
