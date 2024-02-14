import 'package:get/get.dart';
import 'package:school_sports/views/screens/NosSports/nos_sports_screen.dart';
import 'package:school_sports/views/screens/inscriptionScreen/inscription_screen.dart';
import 'package:school_sports/views/screens/languesScreen/langues_screen.dart';
import 'package:school_sports/views/screens/les_shark_lantides/les_shark_lantides.dart';
import 'package:school_sports/views/screens/logInScreen/log_in_screen.dart';
import 'package:school_sports/views/screens/notreaventureScreen/notreaventure_screen.dart';
import 'package:school_sports/views/screens/sinscrirePart2Screen/sinscrire_part2_screen.dart';
import 'package:school_sports/views/screens/splashScreen/splash_screen.dart';

import '../views/screens/SportdumatchScreen/sportdumatch_screen.dart';
import '../views/screens/la_boutique/la_boutique_screen.dart';
import '../views/screens/les_sportofs/les_sportofs_screen.dart';
import '../views/screens/matchsetResultatsScreen/matchset_resultats_screen.dart';
import '../views/screens/nos_events/nos_events_screen.dart';

class AppRoutes {
  static const String lesSharklantides = "/les_shark_lantides.dart";
  static const String splashScreen = "/splash_screen.dart";
  static const String languesScreen = "/langues_screen.dart";
  static const String inscriptionScreen = "/inscription_screen.dart";
  static const String logInScreen = "/log_in_screen.dart";
  static const String sinscrirePart2Screen = "/sinscrire_part2_screen.dart";
  static const String nosSportsScreen = "/nos_sports_screen.dart";
  static const String notreaventureScreen = "/notreaventure_screen.dart";
  static const String matchsetResultatsScreen = "/matchset_resultats_screen.dart";
  static const String lesSportofsScren = "/les_sportofs_screen.dart";
  static const String nosEventsScreen = "/nos_events_screen.dart";
  static const String sportdumatchScreen = "/sportdumatch_screen.dart";
  static const String laBoutiqueScreen = "/la_boutique_screen.dart";

  static List<GetPage> routes = [
    GetPage(name: lesSharklantides, page: () => LesSharklantides()),
    GetPage(name: splashScreen, page: () => SplashScreen()),
    GetPage(name: languesScreen, page: () => LanguesScreen()),
    GetPage(name: inscriptionScreen, page: () => InscriptionScreen()),
    GetPage(name: logInScreen, page: () => LogInScreen()),
    GetPage(name: sinscrirePart2Screen, page: () => SinscrirePart2Screen()),
    GetPage(name: nosSportsScreen, page: () => NosSportsScreen()),
    GetPage(name: notreaventureScreen, page: () => NotreaventureScreen()),
    GetPage(name: matchsetResultatsScreen, page: () => MatchsetResultatsScreen()),
    GetPage(name: lesSportofsScren, page: () => LesSportofsScren()),
    GetPage(name: nosEventsScreen, page: () => NosEventsScreen()),
    GetPage(name: sportdumatchScreen, page: () => SportdumatchScreen()),
    GetPage(name: laBoutiqueScreen, page: () => LaBoutiqueScreen()),
  ];
}
