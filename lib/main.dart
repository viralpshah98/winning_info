import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:winning_info/routes/routes.dart';
import 'package:winning_info/ui/splash_screen/splash_screen.dart';

void main() {
  runZonedGuarded(() {
    WidgetsFlutterBinding.ensureInitialized();
    ScreenUtil.ensureScreenSize();
    GetStorage.init();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]).then(
      (value) => runApp(
        const MyApp(),
      ),
    );
  }, (error, stack) {});
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      child: GetMaterialApp(
        title: 'Winning Info',
        debugShowCheckedModeBanner: false,
        initialRoute: SplashScreen.route,
        getPages: routes,
      ),
    );
  }
}
