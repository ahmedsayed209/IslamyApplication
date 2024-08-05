import 'dart:developer';

import 'package:animated_custom_dropdown/custom_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:islamyapplication/core/Settings_Provider.dart';
import 'package:provider/provider.dart';

class settingsView extends StatefulWidget {

   settingsView({super.key});

  @override
  State<settingsView> createState() => _settingsViewState();
}

class _settingsViewState extends State<settingsView> {
  var  lang_list =[
    "English",
     "عربي"
  ];

  var  theme_list =[
    "Light",
    "Dark",
  ];

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var provider = Provider.of<SettingsProvider>(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:15,vertical:20),
      child: (
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height:35,),
              Text("Languages",style: theme.textTheme.bodyLarge,),
          SizedBox(height:35,),
             CustomDropdown<String>(
                 hintText: 'Select job role',
                 items: lang_list,
                 initialItem: provider.CuurentLang == "en" ? lang_list[0]:lang_list[1],
                 onChanged: (value) {
                   if (value == "English")
                   {
                     provider.changelanguage("en");
                   }
                   if (value =="عربي")
                   {
                     provider.changelanguage("ar");
                   }
                  log('changing value to: $value');
               },decoration: CustomDropdownDecoration(
                 closedFillColor: provider.isDark() ? Color(0xFF141A2E) : Colors.white,
      expandedFillColor:  provider.isDark() ? Color(0xFF141A2E) : Colors.white,
      closedSuffixIcon: Icon(Icons.keyboard_arrow_down_rounded,color:provider.isDark()? Colors.amberAccent:Colors.black,),
      expandedSuffixIcon: Icon(Icons.keyboard_arrow_up_rounded,color:provider.isDark()? Colors.amberAccent:Colors.black,),
      ),
    ),
          SizedBox(height:35,),
          Text("Theme",style: theme.textTheme.bodyLarge,),
          SizedBox(height:35,),
          CustomDropdown<String>(
              hintText: 'Select job role',
              items: theme_list,
              initialItem: provider.isDark() ? theme_list[1]:theme_list[0],
              onChanged: (value) {
                if (value == "Light")
                  {
                    provider.changeThemeMode(ThemeMode.light);
                  }
                if (value == "Dark")
                {
                  provider.changeThemeMode(ThemeMode.dark);
                }

              },decoration: CustomDropdownDecoration(
            closedFillColor: provider.isDark() ? Color(0xFF141A2E) : Colors.white,
            expandedFillColor:  provider.isDark() ? Color(0xFF141A2E) : Colors.white,
            closedSuffixIcon: Icon(Icons.keyboard_arrow_down_rounded,color:provider.isDark()? Colors.amberAccent:Colors.black,),
            expandedSuffixIcon: Icon(Icons.keyboard_arrow_up_rounded,color:provider.isDark()? Colors.amberAccent:Colors.black,),
          ),
          )
        ],
      )
      ),
    );
  }
}
