import 'package:flutter/material.dart';

class settingsView extends StatelessWidget {
  const settingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Settings_View",
        style: TextStyle(
            fontFamily: "El Messeri",
            fontSize: 15,
            fontWeight: FontWeight.w700),
      ),
    );
  }
}
