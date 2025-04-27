import 'package:flutter/material.dart';
import 'package:shametha_portfolio/components/Home.dart';
import 'package:shametha_portfolio/components/Skills.dart';
import 'package:shametha_portfolio/components/Navbar.dart';
import 'package:shametha_portfolio/components/Experience.dart';
import 'package:shametha_portfolio/components/contact.dart';
import 'package:shametha_portfolio/components/leadershipExperience.dart';
import 'package:shametha_portfolio/components/projects.dart';
import 'package:animated_background/animated_background.dart';

// TODO: rename this file
class PageViewUtil extends StatefulWidget {
  final VoidCallback toggleTheme;
  final bool isDarkTheme;

  const PageViewUtil({
    super.key,
    required this.toggleTheme,
    required this.isDarkTheme,
  });

  @override
  _PageViewUtilState createState() => _PageViewUtilState();
}

class _PageViewUtilState extends State<PageViewUtil>
    with TickerProviderStateMixin {
  final ScrollController _scrollController = ScrollController();

  // GlobalKeys for each section
  final GlobalKey _homeKey = GlobalKey();
  final GlobalKey _skillsKey = GlobalKey();
  final GlobalKey _experienceKey = GlobalKey();
  final GlobalKey _projectsKey = GlobalKey();
  final GlobalKey _contactKey = GlobalKey();

  // Function to scroll to a specific section
  void _scrollToSection(GlobalKey key) {
    final context = key.currentContext;
    if (context != null) {
      Scrollable.ensureVisible(
        context,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    var isMobile =
        MediaQuery.of(context).size.width < MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      appBar: Navbar(
        toggleTheme: widget.toggleTheme,
        isDarkTheme: widget.isDarkTheme,
        onNavItemClicked: (section) {
          switch (section) {
            case "home":
              _scrollToSection(_homeKey);
              break;
            case "skills":
              _scrollToSection(_skillsKey);
              break;
            case "experience":
              _scrollToSection(_experienceKey);
              break;
            case "projects":
              _scrollToSection(_projectsKey);
              break;
            case "contact":
              _scrollToSection(_contactKey);
              break;
          }
        },
      ),

      body: AnimatedBackground(
        behaviour: _buildBehaviour(),
        vsync: this,
        child: SingleChildScrollView(
          controller: _scrollController,

          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SizedBox(
                key: _homeKey,
                child: const HomePage(),
              ),
              SizedBox(
                key: _skillsKey,
                child: const SkillsPage(),
              ),
              SizedBox(
                key: _experienceKey,
                child: ExperiencePage(),
              ),
              if(!isMobile)
              SizedBox(
                height: MediaQuery.of(context).size.height,
                child: LeadershipExperiencePage(),
              ),
              SizedBox(
                key: _projectsKey,
                child: ProjectPage(),
              ),
              SizedBox(
                key: _contactKey,
                height: isMobile ? MediaQuery.of(context).size.height/3 : MediaQuery.of(context).size.height,
                child: ContactPage(isMobile: isMobile),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Behaviour _buildBehaviour() {
    if (widget.isDarkTheme)
      return SpaceBehaviour();
    else
      return RandomParticleBehaviour(
        options: const ParticleOptions(
          baseColor: Colors.white,
          spawnMinSpeed: 10,
          spawnMaxSpeed: 100,
          minOpacity: 0.05,
          maxOpacity: 0.3,
          particleCount: 50,
          spawnMinRadius: 5,
          spawnMaxRadius: 20,
        ),
      );
  }
}
