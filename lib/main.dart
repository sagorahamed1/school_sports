import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:school_sports/locale_string.dart';
import 'package:school_sports/routes/routes.dart';
import 'package:school_sports/themes/themes.dart';
import 'package:school_sports/views/screens/splashScreen/splash_screen.dart';



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
        // locale: const Locale("fn","FN"),
         locale: const Locale("en","US"),
        debugShowCheckedModeBanner: false,
        title: 'School Sports',
        theme: Themes().lightTheme,
        initialRoute: AppRoutes.splashScreen,
        getPages: AppRoutes.routes,
        home: SplashScreen(),
      ),
    );
  }
}


