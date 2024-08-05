import 'dart:async';

import 'package:flutter/material.dart';
import 'package:islamyapplication/core/Settings_Provider.dart';
import 'package:islamyapplication/layout/layout_view.dart';
import 'package:provider/provider.dart';

class SplashView extends StatefulWidget {
  static const String routeName = "/";
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, layout_view.RouteName);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingsProvider>(context);
    return Image.asset(
     provider.getSplashBackgroud() ,
      fit: BoxFit.cover,
    );
  }
}
