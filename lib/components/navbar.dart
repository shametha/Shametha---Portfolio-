import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Navbar extends StatelessWidget implements PreferredSizeWidget {
  final VoidCallback toggleTheme; // Callback to toggle the theme
  final bool isDarkTheme;
  final Function(String) onNavItemClicked;

  const Navbar({
    super.key,
    required this.toggleTheme,
    required this.isDarkTheme,
    required this.onNavItemClicked,
  });

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return AppBar(
      backgroundColor: theme.colorScheme.primary,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: toggleTheme,
            child: Icon(
              isDarkTheme ? Icons.mode_night_sharp : Icons.sunny,
              color: theme.colorScheme.onSecondary,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              InkWell(
                onTap: () => onNavItemClicked('home'),
                child: Text("HOME", style: theme.textTheme.labelLarge),
              ),
              SizedBox(width: 20.w),
              InkWell(
                onTap: () => onNavItemClicked('skills'),
                child: Text("SKILLS", style: theme.textTheme.labelLarge),
              ),
              SizedBox(width: 20.w),
              InkWell(
                onTap: () => onNavItemClicked('experience'),
                child: Text("EXPERIENCE", style: theme.textTheme.labelLarge),
              ),
              SizedBox(width: 20.w),
              InkWell(
                onTap: () => onNavItemClicked('projects'),
                child: Text("PROJECTS", style: theme.textTheme.labelLarge),
              ),

              SizedBox(width: 20.w),
              InkWell(
                onTap: () => onNavItemClicked('contact'),
                child: Text("CONTACT", style: theme.textTheme.labelLarge),
              ),
              SizedBox(width: 20.w),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
