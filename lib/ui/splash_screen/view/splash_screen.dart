import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:winning_info/ui/home_screen/home_screen.dart';
import 'package:winning_info/ui/login_screen/login_screen.dart';
import 'package:winning_info/utils/get_storage_utils/get_storage_utils.dart';

class SplashScreen extends StatefulWidget {
  static const String route = '/';

  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2)).then((value) {
      GetStorageUtils.getBoolean(kStayLogin, false).then((value) {
        if (value) {
          Get.offNamed(HomeScreen.route);
        } else {
          Get.offNamed(LoginScreen.route);
        }
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.red,);
  }
}
