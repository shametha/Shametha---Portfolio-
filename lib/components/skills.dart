import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shametha_portfolio/util/data.dart';

class SkillsPage extends StatelessWidget {
  const SkillsPage({super.key});
  final List<String> backend_skills = Data.backend_skills;
  final List<String> database_skills = Data.database_skills;
  final List<String> frontend_skills = Data.frontend_skills;
  final List<String> miscellaneous_skills = Data.Miscellaneous_skills;
  final List<String> soft_skills = Data.soft_skills;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var isMobile =
        MediaQuery.of(context).size.width < MediaQuery.of(context).size.height;
    return SizedBox(

      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
            flex: 3,
            child: Padding(
              padding: EdgeInsets.all(28.w),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(250),
                  boxShadow: [
                    BoxShadow(
                      color: Theme.of(context).colorScheme.onSecondary,
                      blurRadius: 20,
                      spreadRadius: 10,
                      offset: Offset(0, 0),
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular( isMobile ? 50 : 300),
                  child: Image.asset(
                    '/images/TechStack.png',
                    width: isMobile? 100.h : 550.w,
                    height: isMobile? 100.h : 550.h,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(width: 50.w),
          Flexible(
            flex: 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Skills", style: theme.textTheme.titleMedium),
                SizedBox(height: isMobile? 8.h: 16.h),

                Text("Backend", style: theme.textTheme.bodyLarge),
                Wrap(
                  spacing: 8.w,
                  runSpacing: 8.h,
                  children:
                      backend_skills.map((skill) {
                        return Container(
                          decoration: BoxDecoration(
                            color: theme.colorScheme.onSecondaryContainer,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(8.w),
                            child: Text(
                              skill,
                              style: theme.textTheme.labelMedium,
                            ),
                          ),
                        );
                      }).toList(),
                ),
                SizedBox(height: isMobile? 8.h: 16.h),

                Text("Databases", style: theme.textTheme.bodyLarge),
                Wrap(
                  spacing: 8.w,
                  runSpacing: 8.h,
                  children:
                      database_skills.map((skill) {
                        return Container(
                          decoration: BoxDecoration(
                            color: theme.colorScheme.onSecondaryContainer,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(8.w),
                            child: Text(
                              skill,
                              style: theme.textTheme.labelMedium,
                            ),
                          ),
                        );
                      }).toList(),
                ),
                SizedBox(height: isMobile? 8.h:16.h),

                Text("Frontend", style: theme.textTheme.bodyLarge),
                Wrap(
                  spacing: 8.w,
                  runSpacing: 8.h,
                  children:
                      frontend_skills.map((skill) {
                        return Container(
                          decoration: BoxDecoration(
                            color: theme.colorScheme.onSecondaryContainer,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(8.w),
                            child: Text(
                              skill,
                              style: theme.textTheme.labelMedium,
                            ),
                          ),
                        );
                      }).toList(),
                ),
                SizedBox(height: isMobile? 8.h:16.h),

                Text("Miscellaneous", style: theme.textTheme.bodyLarge),
                Wrap(
                  spacing: 8.w,
                  runSpacing: 8.h,
                  children:
                      miscellaneous_skills.map((skill) {
                        return Container(
                          decoration: BoxDecoration(
                            color: theme.colorScheme.onSecondaryContainer,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(8.w),
                            child: Text(
                              skill,
                              style: theme.textTheme.labelMedium,
                            ),
                          ),
                        );
                      }).toList(),
                ),
                SizedBox(height: isMobile? 8.h: 12.h),


                Text("Soft Skills", style: theme.textTheme.bodyLarge),
                Wrap(
                  spacing: 8.w,
                  runSpacing: 8.h,
                  children:
                      soft_skills.map((skill) {
                        return Container(
                          decoration: BoxDecoration(
                            color: theme.colorScheme.onSecondaryContainer,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(8.w),
                            child: Text(
                              skill,
                              style: theme.textTheme.labelMedium,
                            ),
                          ),
                        );
                      }).toList(),
                ),
                SizedBox(height:isMobile? 8.h: 12.h),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
