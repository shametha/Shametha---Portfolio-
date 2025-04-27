import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shametha_portfolio/util/data.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'dart:async';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  List<String> _titles = Data.titles;
  int _currentIndex = 0;
  late Timer _timer;

  void _startAnimation() {
    _timer = Timer.periodic(const Duration(milliseconds: 1500), (timer) {
      setState(() {
        _currentIndex = (_currentIndex + 1) % _titles.length;
      });
    });
  }

  @override
  void initState() {
    super.initState();
    _startAnimation();
  }

  @override
  void dispose() {
    _timer.cancel(); // Cancel the timer when the widget is disposed
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    return LayoutBuilder(
      builder: (context, constraints) {
        bool isMobile =
            MediaQuery.of(context).size.width <
            MediaQuery.of(context).size.height;

        return SizedBox(
          height:
              !isMobile
                  ? MediaQuery.of(context).size.height - 100.h
                  : MediaQuery.of(context).size.height / 3,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                flex: 4,
                child: HomePageCard(
                  isMobile: isMobile,
                  titles: _titles,
                  currentIndex: _currentIndex,
                  theme: theme,
                ),
              ),
              Flexible(
                flex: 4,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.7),
                    borderRadius: BorderRadius.circular(220),
                    boxShadow: [
                      BoxShadow(
                        color: Theme.of(context).colorScheme.onSecondary,
                        blurRadius: 20,
                        spreadRadius: 5,
                        offset: Offset(0, 0),
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(220),
                    child: Image.asset(
                      '/images/shamethaHeadshot.png',
                      width: isMobile ? 120.h : 450.w,
                      height: isMobile ? 120.h : 450.h,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class HomePageCard extends StatelessWidget {
  final bool isMobile;
  final List<String> titles;
  final int currentIndex;
  final ThemeData theme;

  const HomePageCard({
    required this.isMobile,
    required this.titles,
    required this.currentIndex,
    required this.theme,
  });

  @override
  Widget build(BuildContext context) {
    var isMobile =
        MediaQuery.of(context).size.width < MediaQuery.of(context).size.height;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Hey, ", style: theme.textTheme.titleMedium, maxLines: 1),
        SizedBox(height: isMobile ? 4.h : 12.h),
        Text("I'm Shametha", style: theme.textTheme.titleLarge, maxLines: 1),
        Text(
          'I talk to computers for a living. Sometimes, they listen. Most times, I debug.',
          style: theme.textTheme.labelSmall?.copyWith(
            fontSize: isMobile ? 16.sp : theme.textTheme.labelSmall?.fontSize,
          ),
        ),
        SizedBox(height: isMobile ? 8.h : 60.h),
        Text("I am a", style: theme.textTheme.titleSmall),
        SizedBox(
          width: double.infinity,
          child: DefaultTextStyle(
            style: theme.textTheme.titleMedium!,
            child: AnimatedTextKit(
              repeatForever: true,
              animatedTexts:
                  titles.map((title) {
                    return TypewriterAnimatedText(
                      title,
                      speed: const Duration(milliseconds: 80), // Typing speed
                      cursor: '|', // Optional cursor
                    );
                  }).toList(),
            ),
          ),
        ),
        SizedBox(height: isMobile ? 4.h : 20.h),
        ElevatedButton(
          onPressed: () {
            launchUrl(
              Uri.parse(
                "mailto:kgshametha@gmail.com?subject=Let's Connect&body=Hey Shametha, \nThis is ",
              ),
            );
          },
          child: Text('Get in Touch!', style: theme.textTheme.labelMedium),
          style: ElevatedButton.styleFrom(
            backgroundColor: theme.colorScheme.onSecondaryContainer,
            foregroundColor: theme.colorScheme.primary,
            padding: EdgeInsets.symmetric(
              horizontal: 16.w,
              vertical: 16.h,
            ), 
            minimumSize: Size(10.w, 18.h), 
            
          ),
        ),
        SizedBox(height: isMobile? 0.h: 8.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            IconButton(
              icon: FaIcon(
                FontAwesomeIcons.github,
                size: 30.w,
                color: Colors.white,
              ),
              onPressed: () {
                launchUrl(Uri.parse("https://github.com/shametha"));
              },
            ),
            if (!isMobile)
            SizedBox(width: 16.w),
            IconButton(
              icon: FaIcon(
                FontAwesomeIcons.linkedin,
                size: 30.w,
                color: Colors.white,
              ),
              onPressed: () {
                launchUrl(Uri.parse('https://www.linkedin.com/in/shametha'));
              },
            ),
          ],
        ),
      ],
    );
  }
}
