import 'package:flutter/material.dart';
import 'package:spotify/core/configs/theme/app_theme.dart';
import 'package:spotify/presentation/splash/pages/splash.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: AppTheme.lightTheme,
    home: const SplashPage(),
  ));
}
