import 'package:flutter/material.dart';
import 'package:restaurant_app_dicoding/restaurant.dart';
import 'package:restaurant_app_dicoding/screens/detail_screen.dart';
import 'package:restaurant_app_dicoding/screens/home_screen.dart';
import 'package:restaurant_app_dicoding/screens/splash_screen.dart';
import 'package:restaurant_app_dicoding/style.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: primary,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const SplashScreen(),
      routes: {
        HomeScreen.routeName: (context) => const HomeScreen(),
        DetailPage.routeName: (context) => DetailPage(
              restaurant:
                  ModalRoute.of(context)?.settings.arguments as Restaurants,
            ),
      },
    );
  }
}
