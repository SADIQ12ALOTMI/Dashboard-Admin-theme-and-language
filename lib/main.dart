import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:admin/constants.dart';
import 'package:admin/screens/main/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'controllers/MenuController.dart';
import 'language/translations.dart';

void main() async {
  await GetStorage.init();
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return AdaptiveTheme(

      light: ThemeData.light().copyWith(
        scaffoldBackgroundColor: creamColor,
        textTheme: GoogleFonts.cairoTextTheme(Theme.of(context).textTheme)
            .apply(bodyColor: Colors.black),
        canvasColor: snowColor,
        primaryColor: primaryColor,
        indicatorColor: secondaryColor,
        splashColor: creamColor,


      ),
      dark: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: bgColor,
        textTheme: GoogleFonts.cairoTextTheme(Theme.of(context).textTheme)
            .apply(bodyColor: Colors.white),
        canvasColor: secondaryColor,
        primaryColor: primaryColor,
        indicatorColor: snowColor,
        splashColor: bgColor,

      ),
      initial: AdaptiveThemeMode.light,

      builder: (theme, darkTheme) => GetMaterialApp(
        title: 'لوحة التحكم',
        theme: theme,

        darkTheme: darkTheme,


        localizationsDelegates: const [
          GlobalCupertinoLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ],
        supportedLocales: const [
          Locale("en", "US"),
          Locale('ar', 'AE'),
        ],
        translations: Translation(),
        locale: Locale(GetStorage().read(language)??'ar'),
        debugShowCheckedModeBanner: false,
        home: MultiProvider(
          providers: [
            Provider(
              create: (context) => MenuController1(),
            ),
          ],
          child: MainScreen(),
        ),
      ),
    );
  }
}
