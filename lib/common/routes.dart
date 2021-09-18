import 'package:flutter/material.dart';
import 'package:pocket_news/ui/home.dart';
import 'package:pocket_news/ui/splash_screen.dart';

Map<String, WidgetBuilder> routes = {
  SplashScreen.id: (context) => const SplashScreen(),
  Home.id: (context) => const Home(),
};
