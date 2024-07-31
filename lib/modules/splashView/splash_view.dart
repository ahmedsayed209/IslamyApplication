import 'dart:async';

import 'package:flutter/material.dart';
import 'package:islamyapplication/layout/layout_view.dart';

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
    return Image.asset(
      "assets/images/splash _1_background.png",
      fit: BoxFit.cover,
    );
  }
}
