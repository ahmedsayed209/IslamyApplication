import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islamyapplication/core/application_theme_manager.dart';
import 'package:islamyapplication/layout/layout_view.dart';
import 'package:islamyapplication/modules/Hadeith_view/hadith_details.dart';
import 'package:islamyapplication/modules/Hadeith_view/hadith_view.dart';
import 'package:islamyapplication/modules/quran_view/Quran_details_view.dart';
import 'package:islamyapplication/modules/splashView/splash_view.dart';

void main()
{
  runApp(MyApplicationIsalami());
}

class MyApplicationIsalami extends StatelessWidget
{
  const MyApplicationIsalami({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "IslamiApp",
      debugShowCheckedModeBanner: false,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      locale: Locale("en"),
      supportedLocales: AppLocalizations.supportedLocales,
      theme: ApplicationThemeManager.lightThemeData,
      initialRoute: "/",
      routes: {
        SplashView.routeName : (context) => SplashView(),
        layout_view.RouteName :(context) =>layout_view(),
        quranDetailsView.QuranDetail_Screen :(context)=> quranDetailsView(),
        hadith_details.routename :(context) =>hadith_details(),
      },
    );
  }

}