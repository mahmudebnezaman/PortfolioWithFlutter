import 'package:portfolio/data/model/skill_model.dart';

String profileImage = "assets/images/portfolio.png";
String backgroundImage = "assets/images/stars.jpg";

// App Icons
String linkedInIcon = "assets/svgs/linkedin.svg";
String githubIcon = "assets/svgs/github.svg";
String skypeIcon = "assets/svgs/skype.svg";
String phoneIcon = "assets/svgs/phone.svg";
String emailIcon = "assets/svgs/email.svg";
String addressIcon = "assets/svgs/address.svg";

// Skill Icons
String cProgramIcon = "assets/svgs/c-programming-logo.svg";
String dartProgramIcon = "assets/svgs/dart-programming-logo.svg";
String flutterIcon = "assets/svgs/flutter-logo.svg";
String firebaseIcon = "assets/svgs/firebase-logo.svg";
String gitIcon = "assets/svgs/git-logo.svg";
String githubSkillIcon = "assets/svgs/github-logo.svg";
String gitlabSkillIcon = "assets/svgs/gitlab-logo.svg";

List<Skill> skillsList = [
  Skill(dartProgramIcon, "Dart Programming", "Experienced in Dart, the core language of Flutter. Strong in developing mobile applications."),
  Skill(flutterIcon, "Flutter", "Skilled in building cross-platform mobile apps with Flutter, creating seamless UIs."),
  Skill(firebaseIcon, "Firebase", "Proficient in integrating Firebase for backend services like authentication and database."),
  Skill(cProgramIcon, "C Programming", "Solid foundation in C programming, with knowledge in algorithms and memory management."),
  Skill(gitIcon, "Git", "Version control expertise with Git for managing code efficiently across teams."),
  Skill(githubSkillIcon, "GitHub", "Experienced with GitHub for repository management, collaboration, and versioning."),
  Skill(gitlabSkillIcon, "GitLab", "Proficient in using GitLab for CI/CD pipelines and project management.")
];


// Lottie Files
String coderAstronaut = "assets/lottie_files/coder_astronaut.json";