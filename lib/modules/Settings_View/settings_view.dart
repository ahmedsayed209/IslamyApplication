import 'package:animated_custom_dropdown/custom_dropdown.dart';
import 'package:flutter/material.dart';

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
                 initialItem: lang_list[0],
                 onChanged: (value) {
                 // log('changing value to: $value');
               }
    ),
          SizedBox(height:35,),
          Text("Theme",style: theme.textTheme.bodyLarge,),
          SizedBox(height:35,),
          CustomDropdown<String>(
              hintText: 'Select job role',
              items: theme_list,
              initialItem: theme_list[0],
              onChanged: (value) {
                // log('changing value to: $value');
              }
          )
        ],
      )
      ),
    );
  }
}
