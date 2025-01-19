import 'package:get/get.dart';
import 'package:winning_info/ui/add_volunteers_screen/add_volunteers_screen.dart';
import 'package:winning_info/ui/birthday_screen/view/birthday_screen.dart';
import 'package:winning_info/ui/birthday_screen/view/birthday_screen.dart';
import 'package:winning_info/ui/home_screen/home_screen.dart';
import 'package:winning_info/ui/import_screen/import_screen.dart';
import 'package:winning_info/ui/login_screen/login_screen.dart';
import 'package:winning_info/ui/splash_screen/splash_screen.dart';
import 'package:winning_info/ui/volunteers_screen/volunteers_screen.dart';

List<GetPage<dynamic>>? routes = [
  GetPage(
    name: SplashScreen.route,
    page: () => const SplashScreen(),
  ),
  GetPage(
    name: LoginScreen.route,
    page: () => const LoginScreen(),
  ),
  GetPage(
    name: HomeScreen.route,
    page: () => const HomeScreen(),
  ),
  GetPage(
    name: VolunteersScreen.route,
    page: () => const VolunteersScreen(),
  ),
  GetPage(
    name: AddVolunteerScreen.route,
    page: () => const AddVolunteerScreen(),
  ),
  GetPage(
    name: BirthdayScreen.route,
    page: () => const BirthdayScreen(),
  ),
  GetPage(
    name: ImportScreen.route,
    page: () => const ImportScreen(),
  ),
];
