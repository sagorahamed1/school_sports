import 'package:get/get.dart';
import 'package:school_sports/views/screens/NosSports/nos_sports_screen.dart';
import 'package:school_sports/views/screens/inscriptionScreen/inscription_screen.dart';
import 'package:school_sports/views/screens/languesScreen/langues_screen.dart';
import 'package:school_sports/views/screens/les_shark_lantides/les_shark_lantides.dart';
import 'package:school_sports/views/screens/logInScreen/log_in_screen.dart';
import 'package:school_sports/views/screens/notreaventureScreen/notreaventure_screen.dart';
import 'package:school_sports/views/screens/sinscrirePart2Screen/sinscrire_part2_screen.dart';
import 'package:school_sports/views/screens/splashScreen/splash_screen.dart';

class AppRoutes {
  static const String lesSharklantides = "/les_shark_lantides.dart";
  static const String splashScreen = "/splash_screen.dart";
  static const String languesScreen = "/langues_screen.dart";
  static const String inscriptionScreen = "/inscription_screen.dart";
  static const String logInScreen = "/log_in_screen.dart";
  static const String sinscrirePart2Screen = "/sinscrire_part2_screen.dart";
  static const String nosSportsScreen = "/nos_sports_screen.dart";
  static const String notreaventureScreen = "/notreaventure_screen.dart";

  static List<GetPage> routes = [
    GetPage(name: lesSharklantides, page: () => LesSharklantides()),
    GetPage(name: splashScreen, page: () => SplashScreen()),
    GetPage(name: languesScreen, page: () => LanguesScreen()),
    GetPage(name: inscriptionScreen, page: () => InscriptionScreen()),
    GetPage(name: logInScreen, page: () => LogInScreen()),
    GetPage(name: sinscrirePart2Screen, page: () => SinscrirePart2Screen()),
    GetPage(name: nosSportsScreen, page: () => NosSportsScreen()),
    GetPage(name: notreaventureScreen, page: () => NotreaventureScreen()),
  ];
}
