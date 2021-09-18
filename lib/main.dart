import 'package:flutter/material.dart';
import 'package:pocket_news/common/routes.dart';
import 'package:pocket_news/common/theme.dart';
import 'package:pocket_news/ui/splash_screen.dart';

void main() {
  runApp(const PocketNews());
}

class PocketNews extends StatelessWidget {
  const PocketNews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pocket News',
      theme: lightThemeData,
      initialRoute: SplashScreen.id,
      routes: routes,
    );
  }
}
