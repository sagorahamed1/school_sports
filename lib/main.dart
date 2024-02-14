import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:school_sports/locale_string.dart';
import 'package:school_sports/routes/routes.dart';
import 'package:school_sports/themes/themes.dart';
import 'package:school_sports/views/screens/la_journ%C3%A9e_sportive/la_journ%C3%A9e_sportive_screen.dart';
import 'package:school_sports/views/screens/NosSports/nos_sports_screen.dart';
import 'package:school_sports/views/screens/les_shark_lantides/les_shark_lantides.dart';
import 'package:school_sports/views/screens/nos_events/nos_events_screen.dart';
import 'package:school_sports/views/screens/splashScreen/splash_screen.dart';
import 'views/screens/SportdumatchScreen/sportdumatch_screen.dart';
import 'views/screens/inscriptionScreen/inscription_screen.dart';
import 'views/screens/la_boutique/la_boutique_screen.dart';
import 'views/screens/languesScreen/langues_screen.dart';
import 'views/screens/les_sportofs/les_sportofs_screen.dart';
import 'views/screens/logInScreen/log_in_screen.dart';
import 'views/screens/matchsetResultatsScreen/matchset_resultats_screen.dart';
import 'views/screens/notreaventureScreen/notreaventure_screen.dart';
import 'views/screens/sinscrirePart2Screen/sinscrire_part2_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(373, 812),
      builder: (context, child) => GetMaterialApp(
        translations: LocaleString(),
        locale: const Locale("fn","FN"),
        // locale: const Locale("en","US"),
        debugShowCheckedModeBanner: false,
        title: 'School Sports',
        theme: Themes().lightTheme,
        initialRoute: AppRoutes.languesScreen,
        getPages: AppRoutes.routes,
        home: LanguesScreen(),
      ),
    );
  }
}
