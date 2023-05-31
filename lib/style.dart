import 'package:flutter/material.dart';

const MaterialColor primary = MaterialColor(_primaryPrimaryValue, <int, Color>{
  50: Color(0xFFE0F0F0),
  100: Color(0xFFB3D9D9),
  200: Color(0xFF80C0C0),
  300: Color(0xFF4DA6A6),
  400: Color(0xFF269393),
  500: Color(_primaryPrimaryValue),
  600: Color(0xFF007878),
  700: Color(0xFF006D6D),
  800: Color(0xFF006363),
  900: Color(0xFF005050),
});
const int _primaryPrimaryValue = 0xFF008080;

const MaterialColor primaryAccent =
    MaterialColor(_primaryAccentValue, <int, Color>{
  100: Color(0xFF83FFFF),
  200: Color(_primaryAccentValue),
  400: Color(0xFF1DFFFF),
  700: Color(0xFF03FFFF),
});
const int _primaryAccentValue = 0xFF50FFFF;
