import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

final ThemeData light = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(
    seedColor: Colors.blue,
    primary: const Color.fromARGB(255, 132, 210, 228),
    secondary: const Color.fromARGB(255, 153, 225, 238),
    onPrimary: const Color.fromARGB(255, 0, 0, 0),
    onSecondary: const Color.fromARGB(255, 20, 153, 197),
    onSecondaryContainer: const Color.fromARGB(255, 4, 131, 162),
  ),
  appBarTheme: const AppBarTheme(
    backgroundColor: const Color.fromARGB(255, 100, 212, 220),
    foregroundColor: Colors.black,
  ),

textTheme: TextTheme(
    labelSmall: TextStyle(
      color: Colors.black,
      fontSize: 16.sp,
    ),
    labelMedium: TextStyle(
      color: Colors.white,
      fontSize: 20.sp,
    ),
    labelLarge: TextStyle(
      color: const Color.fromARGB(255, 5, 2, 93),
      fontSize: 16.sp,
    ),
    bodySmall: TextStyle(
      color: const Color.fromARGB(255, 1, 1, 88),
      fontSize: 24.sp, 
    ),
    bodyMedium: TextStyle(
      color: const Color.fromARGB(255, 1, 8, 71),
      fontSize: 28.sp, 
    ),
    bodyLarge: TextStyle(
      color: const Color.fromARGB(255, 8, 3, 78),
      fontSize: 32.sp, // todo fontfamily
    ),

    titleSmall: TextStyle(
      color: const Color.fromARGB(255, 1, 8, 72),
      fontSize: 36.sp,
    ),
    titleMedium: TextStyle(
      color: Colors.black,
      fontSize: 40.sp,
    ),
    titleLarge: TextStyle(
      color: const Color.fromARGB(255, 1, 9, 79), 
      fontSize: 44.sp),
  ),
);

final ThemeData darkTheme = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(
    seedColor: Colors.black,
    secondary: const Color.fromARGB(255, 1, 1, 69),
    onSecondary: const Color.fromARGB(255, 153, 225, 238),
    onPrimary: const Color.fromARGB(255, 255, 255, 255),
    primary: Colors.black,
    onSecondaryContainer: const Color.fromARGB(255, 170, 226, 235),
    error: const Color(0xFFB00020),
  ),

  textTheme: TextTheme(
    labelSmall: TextStyle(
      color: Colors.white,
      fontSize: 16.sp,
    ),
    labelMedium: TextStyle(
      color: Colors.black,
      fontSize: 20.sp,
    ),
    labelLarge: TextStyle(
      color: const Color.fromARGB(255, 81, 216, 240),
      fontSize: 16.sp,
    ),
    bodySmall: TextStyle(
      color: const Color.fromARGB(255, 81, 216, 240),
      fontSize: 24.sp, 
    ),
    bodyMedium: TextStyle(
      color: Colors.white,
      fontSize: 28.sp, 
    ),
    bodyLarge: TextStyle(
      color: const Color.fromARGB(255, 81, 216, 240),
      fontSize: 32.sp, // todo fontfamily
    ),

    titleSmall: TextStyle(
      color: Colors.white,
      fontSize: 36.sp,
    ),
    titleMedium: TextStyle(
      color: const Color.fromARGB(255, 81, 216, 240),
      fontSize: 40.sp,
    ),
    titleLarge: TextStyle(
      color: Colors.white, 
      fontSize: 44.sp),
  ),
);
