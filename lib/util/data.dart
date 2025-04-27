import 'package:shametha_portfolio/models/LeadershipExperienceDTO.dart';

import '../models/ExperienceDTO.dart';

class Data {
  static const List<String> titles = [
    'Java Developer',
    'Flutter Developer',
    'Orator',
    'Gold Medalist',
    'AWS Certified Cloud Practitioner',
  ];

  static const List<String> backend_skills = [
    'Java',
    'Spring Boot',
    'Dart',
    'Python',
    'AWS',
  ];

  static const List<String> database_skills = ['MySQL', 'MongoDB', 'Firebase'];

  static const List<String> frontend_skills = [
    'Flutter',
    'HTML',
    'CSS',
    'JavaScript',
    'React',
  ];

  static const List<String> soft_skills = [
    'Leadership',
    'Professional Communication',
    'Teamwork',
    'Problem Solving',
    'Creativity',
    'Critical Thinking',  
    'Interpersonal Skills',
  ];

  static const List<String> Miscellaneous_skills = ['Git', 'Agile'];

  static List<Experiencedto> experiences = [
    Experiencedto(
      title: 'Software Engineer',
      company: 'Jp Morgan Chase & Co.',
      date: 'Feb 2023 - Present',
      description:
          'Contributed to the development of new micro-services along with planning, coding, testing(jUnits, AFTs, Perf Testing), deploying and monitoring metrics. Winner of SEPathon, Hackathon focusing to improve customer and employee experience',
      location: 'Bengaluru',
      skills:
          'Development (Java, Spring, Git), Deployment (AWS, terraform), Testing (Cucumber, Karate, Blazemeter), Monitoring (splunk, datadog), Leadership, Professional Team Collaboration, Agile',
    ),
    Experiencedto(
      title: 'SDE Intern',
      company: 'Peoplehum',
      date: 'Jul 2022 - Dec 2022',
      description:
          'Executed requirements and enhanced existing code quality in the backend of peopleHum application. Worked with different teams to build reliable, high-quality solutions to enhance user experience',
      location: 'Bengaluru',
      skills: 'Java, Spring, SQL, Git, Mongo DB, Agile',
    ),

    Experiencedto(
      title: 'Flutter Dev Intern',
      company: 'Incend Digital (P) Limited',
      date: 'Jul 2021 - Aug 2021',
      description:
          'Collaborated in building a light weight Flutter application through UI/UX, API Integration. Received LORs from Founders',
      location: 'Remote',
      skills: 'Coding Standards, Git, Flutter, Team Collaboration',
    ),
    Experiencedto(
      title: 'Marketing Intern',
      company: 'Scholastic India',
      date: 'Jun 2020 - Aug 2020',
      description:
          'Executed a multichannel social media campaign increasing the brand awareness. Received LORs from Marketing Head',
      location: 'Remote',
      skills: 'Content Marketing, Social Media Marketing, Teamwork',
    ),
  ];

  static List<LeadershipExperienceDTO> leadershipExperiences = [
    LeadershipExperienceDTO(
      jobRole: 'SEP EC Lead',
      company: 'Jp Morgan Chase & Co.',
      description:
          '• Lead a multichannel Events for the SEPs across Bengaluru Tech center',
      duration: 'Feb 2024 - Mar 2025',
      skills:
          'Leadership, Creativity, Event Management, Team Management, Event Management, Team Collaboration.',
      location: 'Bengaluru',
    ),
    LeadershipExperienceDTO(
      jobRole: 'Head Coordinator',
      company: 'Hack Club - SKCET',
      description:
          '• Organised 2 Hacakthons along with Extra-curricular competitions, Tech Webinars, Orientation sessions, Mentorship for all participants',
      duration: 'June 2021 - 2023',
      skills: 'Leadership, Creativity, Event organising.',
      location: 'Coimbatore',
    ),
    LeadershipExperienceDTO(
      jobRole: 'Student Partner Leader',
      company: 'Internshala \- Gurgaon, India',
      description:
          '• Lead over 1000+ Campus Ambassadors, leveraging sales by 20% and brand recognition by 22%.\n• Designed promotional content, testimonials and received LORs',
      duration: 'May 2020 – August 2020',
      skills: 'Leadership, Documentation, Persuasion, Team Work.',
      location: 'Remote',
    ),
  ];
}
