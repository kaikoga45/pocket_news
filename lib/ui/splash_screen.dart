import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pocket_news/ui/home.dart';
import 'package:pocket_news/utils/screen_size.dart';

class SplashScreen extends StatefulWidget {
  static const id = '/';

  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 3),
      () => Navigator.pushReplacementNamed(context, Home.id),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: SvgPicture.asset(
              'assets/logo.svg',
              width: getWidth(ratio: 0.50, context: context),
            ),
          ),
        ],
      ),
    );
  }
}
