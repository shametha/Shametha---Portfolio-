import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactPage extends StatelessWidget {
  final isMobile;
  const ContactPage({super.key, this.isMobile});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Container(
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/ContactBgLight.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: Container(
              height: MediaQuery.of(context).size.height / 1.5,
              width: MediaQuery.of(context).size.width / 1.35,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 3, 3, 66).withOpacity(0.3),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
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
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 400.w,
                        child: Text(
                          'My inbox is always open, whether you have an oppurtunity, a question or just wanna say hello!',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      SizedBox(height: isMobile ? 10.h : 28.h),
                      ElevatedButton(
          onPressed: () {
            launchUrl(
              Uri.parse(
                "mailto:kgshametha@gmail.com?subject=Let's Connect&body=Hey Shametha, \nThis is ",
              ),
            );
          },
          child: Text('Say Hello!', style: theme.textTheme.labelMedium),
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
                      SizedBox(height: isMobile ? 0.h : 20.h),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          IconButton(
                            icon: FaIcon(
                              FontAwesomeIcons.github,
                              size: 32.w,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              launchUrl(
                                Uri.parse("https://github.com/shametha"),
                              );
                            },
                          ),
                          SizedBox(width: isMobile ? 4.w : 16.w),
                          IconButton(
                            icon: FaIcon(
                              FontAwesomeIcons.linkedin,
                              size: 32.w,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              launchUrl(
                                Uri.parse(
                                  'https://www.linkedin.com/in/shametha',
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: isMobile? 8.h : 16.h,
            left: 0,
            right: 0,
            child: Center(
              child: Text(
                "Made with ❤️ by Shametha",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                ),
              )))
        ],
        
      ),
    );
  }
}
