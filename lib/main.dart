import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shametha_portfolio/util/theme.dart';
import 'package:shametha_portfolio/util/PageViewUtil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isDarkTheme = true; // default theme

  bool _toggleTheme() {
    setState(() {
      _isDarkTheme = !_isDarkTheme;
    });
    return _isDarkTheme;
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(1280, 712),
      minTextAdapt: true,
      splitScreenMode: true,
      builder:
          (context, child) => MaterialApp(
            title: 'Shametha\'s Portfolio',
            theme: _isDarkTheme ? darkTheme : light,
            debugShowCheckedModeBanner: false,
            home: PageViewUtil(
              toggleTheme: _toggleTheme,
              isDarkTheme: _isDarkTheme,
            ), // Pass the toggleTheme callback
          ),
    );
  }
}
