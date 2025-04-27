import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shametha_portfolio/models/LeadershipExperienceDTO.dart';
import 'package:shametha_portfolio/util/data.dart';

class LeadershipExperiencePage extends StatelessWidget {
  LeadershipExperiencePage({super.key});
  final List<LeadershipExperienceDTO> experiences = Data.leadershipExperiences;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    return Column(
      children: [
        Text("Leadership Experiences", style: theme.textTheme.titleMedium),
        Expanded(
          child: Stack(
            children: [
              CustomPaint(
                size: MediaQuery.of(context).size,
                painter: ExperienceStemPainter(experiences, theme),
              ),
              ...List.generate(experiences.length, (i) {
                double spacing =
                    (MediaQuery.of(context).size.width - 200.w) /
                    (experiences.length + 1);
                double x = spacing + 100.w + i * spacing;
                double yBase = MediaQuery.of(context).size.height / 2 - 20.h;
                double yStem =
                    i % 2 == 0
                        ? yBase - 240.h
                        : yBase + 72.h; // Alternate up and down

                return Positioned(
                  left:
                      x -
                      (spacing * 2 - 100.w) / 2, // Center the card horizontally
                  top: i % 2 == 0 ? yStem - 52.h : yStem - 60.h,
                  child: SizedBox(
                    width: spacing * 2 - 100.w,
                    height: 152.h,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(8.w, 0.w, 4.w, 8.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(
                                Icons.circle,
                                color: theme.colorScheme.onSecondaryContainer,
                                size: 9.w,
                              ),
                              IconButton(
                                icon: Icon(
                                  Icons.info_sharp,
                                  color: theme.colorScheme.onSecondaryContainer,
                                  size: 32.w,
                                ),
                                onPressed: () {
                                  showDialog(
                                    context: context,
                                    builder: (context) {
                                      return AlertDialog(
                                        backgroundColor:
                                            theme.colorScheme.primary,
                                        shadowColor:
                                            theme.colorScheme.onSecondary,

                                        content: SizedBox(
                                          width: 500.w,
                                          child: Wrap(
                                            children: [
                                              Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    experiences[i].jobRole,
                                                    style:
                                                        theme
                                                            .textTheme
                                                            .bodySmall,
                                                  ),
                                                  SizedBox(height: 4.w),
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Text(
                                                        experiences[i].company,
                                                        style:
                                                            theme
                                                                .textTheme
                                                                .labelSmall,
                                                      ),
                                                      Text(
                                                        experiences[i].location,
                                                        style:
                                                            theme
                                                                .textTheme
                                                                .labelSmall,
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(height: 12.w),
                                                  Text(
                                                    experiences[i].description,
                                                    style:
                                                        theme
                                                            .textTheme
                                                            .labelSmall,
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),

                                        actions: [
                                          TextButton(
                                            style: TextButton.styleFrom(
                                              backgroundColor:
                                                  theme
                                                      .colorScheme
                                                      .onSecondaryContainer,
                                              foregroundColor:
                                                  theme.colorScheme.primary,
                                            ),
                                            onPressed: () {
                                              Navigator.of(context).pop();
                                            },
                                            child: Text("Close"),
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                },
                              ),
                            ],
                          ),
                          Text(
                            experiences[i].jobRole,
                            style: theme.textTheme.bodySmall,
                          ),
                          Text(
                            experiences[i].company,
                            style: theme.textTheme.labelSmall,
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              }),
            ],
          ),
        ),
      ],
    );
  }
}

class ExperienceStemPainter extends CustomPainter {
  final List<LeadershipExperienceDTO> experiences;
  final ThemeData theme;
  ExperienceStemPainter(this.experiences, this.theme);

  @override
  void paint(Canvas canvas, Size size) {
    var paint =
        Paint()
          ..color = theme.colorScheme.onSecondaryContainer
          ..strokeWidth = 2
          ..style = PaintingStyle.stroke;

    canvas.drawLine(
      Offset(0 + 100.w, size.height / 2 - 50.w),
      Offset(size.width - 100.w, size.height / 2 - 50.w),
      paint,
    );
    canvas.drawCircle(
      Offset(0 + 100.w, size.height / 2 - 50.w),
      size.width / 500,
      paint,
    );

    double spacing = (size.width - 200.w) / (experiences.length + 1);

    for (int i = 0; i < experiences.length; i++) {
      double x = spacing + 100.w + i * spacing;
      double yBase = size.height / 2 - 50.w;
      double yStem =
          i % 2 == 0 ? yBase - 100.h : yBase + 100.h; // Alternate up and down

      // Draw the stem line
      canvas.drawLine(Offset(x, yBase), Offset(x, yStem), paint);
      canvas.drawCircle(
        Offset(size.width - 100.w, size.height / 2 - 50.w),
        size.width / 500,
        paint,
      );
      if (i % 2 == 0)
        canvas.drawRect(
          Rect.fromCenter(
            center: Offset(x, yStem - 100.h / 2),
            width: spacing * 2 - 100.w,
            height: 100.h,
          ),
          paint,
        );
      else
        canvas.drawRect(
          Rect.fromCenter(
            center: Offset(x, yStem + 100.h / 2),
            width: spacing * 2 - 100.w,
            height: 100.h,
          ),
          paint,
        );
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
