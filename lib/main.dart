import 'dart:io';

import 'package:country_app/di/service_locator.dart';
import 'package:country_app/view/search_country_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked_themes/stacked_themes.dart';

import 'scrollable_behaviour.dart';
import 'services/theme_service.dart';

void main() async {
  HttpOverrides.global = MyHttpOverrides();
  setup();
  await ThemeManager.initialise();
  runApp(const MyApp());
}

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback = (X509Certificate cert, String host, int port) {
        if (host == "yourHost") {
          return true;
        } else {
          return false;
        }
      };
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ThemeBuilder(
        lightTheme: ThemeServic.light(),
        darkTheme: ThemeServic.dark(),
        defaultThemeMode: ThemeMode.system,
        statusBarColorBuilder: (theme) => theme!.colorScheme.secondary,
        builder: (context, regularTheme, darkThem, themeMode) => ScreenUtilInit(
              designSize: const Size(428, 926),
              minTextAdapt: true,
              splitScreenMode: true,
              builder: (context, child) => MaterialApp(
                title: 'Country App',
                darkTheme: darkThem,
                scrollBehavior: AppScrollBehavior(),
                theme: regularTheme,
                themeMode: themeMode,
                home: const SearchCountryView(),
              ),
            ));
  }
}
