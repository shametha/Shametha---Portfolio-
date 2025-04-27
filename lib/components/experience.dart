import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shametha_portfolio/models/ExperienceDTO.dart';
import 'package:shametha_portfolio/util/data.dart';

class ExperiencePage extends StatelessWidget {
  const ExperiencePage({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var isMobile = MediaQuery.of(context).size.width < MediaQuery.of(context).size.height;

    final List<Experiencedto> experiences = Data.experiences;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 72.w, vertical: 20.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Experience", style: theme.textTheme.titleMedium),
          SizedBox(height: 20.h),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(experiences.length, (i) {
              return Container(
                color: theme.colorScheme.primary.withOpacity(0.5),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 15.h,
                  ), 
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Icon and Divider Section
                      Column(
                        children: [
                          CircleAvatar(
                            radius: 25,
                            backgroundColor: theme.colorScheme.onSecondary,
                            child: FaIcon(
                              FontAwesomeIcons.laptopCode,
                              color: theme.colorScheme.primary,
                            ),
                          ),
                          if(!isMobile)
                          SizedBox(height: 10.h),
                          if(!isMobile)
                          Container(
                            height: 70.h,
                            child: VerticalDivider(
                              color: theme.colorScheme.onSecondary,
                              thickness: 1.75,
                            ),
                          ),
                        ],
                      ),
      
                      SizedBox(width: 20.w),
      
                      // Experience Data Section
                      Expanded(
                        child: ExperienceData(
                          jobRole: experiences[i].title,
                          company: experiences[i].company,
                          description: experiences[i].description,
                          duration: experiences[i].date,
                          skills: experiences[i].skills,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}

class ExperienceData extends StatelessWidget {
  final String jobRole;
  final String company;
  final String duration;
  final String description;
  final String skills;

  ExperienceData({
    Key? key,
    required this.jobRole,
    required this.company,
    required this.description,
    required this.skills,
    required this.duration,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var isMobile = MediaQuery.of(context).size.width < MediaQuery.of(context).size.height;
    return Container(
      color: Theme.of(context).colorScheme.primary.withOpacity(1),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 600.w,
                child: Text(jobRole, style: theme.textTheme.bodySmall),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(duration, style: theme.textTheme.labelSmall),
                  Text(
                    company,
                    textAlign: TextAlign.right,
                    style: theme.textTheme.labelLarge,
                  ),
                ],
              ),
            ],
          ),
          if(!isMobile)
          SizedBox(height: 10.h),
          Text(
            description,
            style: isMobile ? 
            theme.textTheme.labelSmall?.copyWith(fontSize: 18.sp, color: theme.colorScheme.onSecondaryContainer) :
            theme.textTheme.labelSmall?.copyWith(
              color: theme.colorScheme.onSecondaryContainer,
            ),
          ),
          SizedBox(height: 10.h),
          Text(
            "Skills: $skills",
            style: isMobile? 
            theme.textTheme.labelSmall?.copyWith(fontSize: 18.sp, color: Colors.white) :
             theme.textTheme.labelSmall?.copyWith(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
