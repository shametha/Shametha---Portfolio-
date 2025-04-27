import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectPage extends StatelessWidget {
  ProjectPage();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      children: [
        Text("Projects", style: Theme.of(context).textTheme.titleMedium),
        SizedBox(height: 16.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ProjectCard(
              size: size,
              projectTitle: "Project 1",
              projectDescription:
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an ",
            ),
            SizedBox(width: 12.w),

            ProjectCard(
              size: size,
              projectTitle: "Project 1",
              projectDescription:
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an ",
            ),
            SizedBox(width: 12.w),

            ProjectCard(
              size: size,
              projectTitle: "Project 1",
              projectDescription:
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an ",
            ),
            SizedBox(width: 12.w),
          ],
        ),
      ],
    );
  }
}

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    super.key,
    required this.size,
    required this.projectTitle,
    required this.projectDescription,
  });

  final Size size;
  final projectTitle;
  final projectDescription;

  @override
  Widget build(BuildContext context) {
    var isMobile =
        MediaQuery.of(context).size.width < MediaQuery.of(context).size.height;
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary.withOpacity(0.5),
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      padding: EdgeInsets.symmetric(horizontal: 12.w),
      width: (size.width - 172.w) / 3,
      height: isMobile? (size.height - 200.h) / 2 : (size.height - 200.h) / 1.25,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: Colors.lightBlueAccent,
            width: 400.w,
            height: isMobile ? 100.h : 200.h,
          ),
          Text(projectTitle, style: Theme.of(context).textTheme.bodySmall),
          Text(
            projectDescription,
            style: Theme.of(context).textTheme.labelSmall,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: FaIcon(
                  FontAwesomeIcons.github,
                  size: 20.w,
                  color: Colors.white,
                ),
                onPressed: () {
                  launchUrl(Uri.parse("https://github.com/shametha"));
                },
              ),
              SizedBox(width: isMobile ? 0 : 16.w),
              IconButton(
                icon: FaIcon(
                  FontAwesomeIcons.circleInfo,
                  size: 20.w,
                  color: Colors.white,
                ),
                onPressed: () {
                  launchUrl(Uri.parse('https://www.linkedin.com/in/shametha'));
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
