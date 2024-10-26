import 'package:flutter/material.dart';

const primaryAppColor = Color(0xFF2a5bb8);
const primaryContainerColor = Color(0xff223e70);
const secondaryAppColor = Color(0xff223e70);
const black = Color(0xFF000000);

const ColorScheme lightColorScheme = ColorScheme.light(
  primary: primaryAppColor,
  primaryContainer: primaryContainerColor,
  secondary: secondaryAppColor,
);

const ColorScheme darkColorScheme = ColorScheme.dark(
  primary: primaryAppColor,
  primaryContainer: primaryContainerColor,
  secondary: secondaryAppColor,
);

const BottomNavigationBarThemeData bottomNavigation =
    BottomNavigationBarThemeData(
  selectedItemColor: primaryContainerColor,
);

final ThemeData lightModeTheme = ThemeData(
    brightness: Brightness.light,
    colorScheme: lightColorScheme,
    bottomNavigationBarTheme: bottomNavigation);

final ThemeData darkModeTheme = ThemeData.dark(useMaterial3: true).copyWith(
    brightness: Brightness.dark,
    colorScheme: darkColorScheme,
    bottomNavigationBarTheme: bottomNavigation);

////////////////////////////

final ColorScheme amoledColorScheme = darkColorScheme.copyWith(
  surface: black,
  secondary: secondaryAppColor,
);

const BottomNavigationBarThemeData amoledBottomNavigation =
    BottomNavigationBarThemeData(
  backgroundColor: black, // Pure black for AMOLED
  selectedItemColor: primaryContainerColor,
  unselectedItemColor: Colors.grey,
);

final ThemeData amoledTheme = ThemeData.dark(useMaterial3: true).copyWith(
  brightness: Brightness.dark,
  colorScheme: amoledColorScheme,
  scaffoldBackgroundColor: black,
  chipTheme: const ChipThemeData(
    backgroundColor: black,
    brightness: Brightness.dark,
    labelStyle: TextStyle(color: Colors.white),
  ),
  bottomAppBarTheme: const BottomAppBarTheme(
    color: black,
  ),
  bottomSheetTheme: const BottomSheetThemeData(
    backgroundColor: black,
  ),
  iconTheme: const IconThemeData(color: Colors.white),
  bottomNavigationBarTheme: amoledBottomNavigation,
  tabBarTheme: const TabBarTheme(indicatorColor: primaryContainerColor),
  appBarTheme: const AppBarTheme(
      backgroundColor: black,
      surfaceTintColor: Colors.black,
      shadowColor: Colors.black),
  popupMenuTheme: const PopupMenuThemeData(color: black),
);
