import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islamyapplication/core/Settings_Provider.dart';
import 'package:islamyapplication/modules/Radio_view/radio_view.dart';
import 'package:islamyapplication/modules/Settings_View/settings_view.dart';
import 'package:islamyapplication/modules/quran_view/Quran_view.dart';
import 'package:islamyapplication/modules/tasbih_view/Tasbih_view.dart';
import 'package:provider/provider.dart';

import '../modules/Hadeith_view/hadith_view.dart';

class layout_view extends StatefulWidget {
  static const String RouteName = "layout_view";
  const layout_view({super.key});

  @override
  State<layout_view> createState() => _layout_viewState();
}

class _layout_viewState extends State<layout_view> {
  int stateIndex = 0;
  List<Widget> selectedWidget = [
    hadithView(),
    quranView(),
    radioView(),
    tasbehView(),
    settingsView(),
  ];
  @override
  Widget build(BuildContext context) {
    var Themee = Theme.of(context);
    var lang = AppLocalizations.of(context);
    var provider = Provider.of<SettingsProvider>(context);
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(provider.getHomeBackgroud()),
            fit: BoxFit.cover),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Center(child: Text(lang!.islami)),
        ),
        body: selectedWidget[stateIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: stateIndex,
          onTap: (value) {
            setState(() {
              stateIndex = value;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/icons/Group 6.png")),
                label: lang.hadeth),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/icons/moshaf_blue.png")),
                label: lang.moshaf),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/icons/radio_blue.png")),
                label: lang.radio),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/icons/sebha_blue.png")),
                label: lang.seb7a),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: lang.settings),
          ],
        ),
      ),
    );
  }
}