import 'package:flutter/material.dart';

import '../constants/constant_fonts.dart';
import '../constants/constant_size.dart';
import 'experience_card.dart';

class ExperienceSection extends StatelessWidget {
  const ExperienceSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Experience",
          style: TextStyle(fontFamily: ConstantFonts.interBold, fontSize: 20, color: Colors.black),
        ),
        SizeConstant.getHeightSpace(16),
        const ExperienceCard(
          companyName: "CircoLife",
          position: "SDE",
          duration: "Jun 2024 - present",
          description:
              " • Developing a business E-commerce app with Flutter Bloc and Blockchain. Integrated real-time APIs and worked onBackend with MongoDB. App Facilitates you to buy, sell and invest your digital gold.\n • Helped in Sprint development by leading the UI revamp team.",
          companyLogo: 'circolife-logo.svg',
        ),
        SizeConstant.getHeightSpace(10),
        const ExperienceCard(
            companyName: "BKS MyGold Pvt. Ltd",
            position: "Flutter Intern",
            duration: "Jun 2023 - Jun 2024",
            description:
                " • Developed a business E-commerce app with Flutter Bloc and Blockchain. Integrated real-time APIs and worked on Backend with MongoDB. App Facilitates you to buy, sell and invest your digital gold.\n • Helped in Sprint development by leading the revamp team.",
            companyLogo: 'bks-logo.svg'),
        SizeConstant.getHeightSpace(10),
        const ExperienceCard(
            companyName: "AiBi Street Pvt. Ltd",
            position: "Android & Python Developer",
            duration: "Jan 2022 - Dec 2022",
            description:
                " • Developed a Student Audit Android app to track and analyze student progress after school lectures with FirebaseRealtime Database and Cloud Storage. Led a team of 2 members and accomplished the project in a designated time.\n • Developed a Django website with Particle Swarm Optimization technique, applied to optimize parameters influencing dam stability, and executed 4 different optimization functions that would prevent a dam from sliding and collapsing.",
            companyLogo: 'circolife-logo.svg')
      ],
    );
  }
}
