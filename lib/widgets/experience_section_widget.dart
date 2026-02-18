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
        ExperienceCard(
          backgroundColor: const Color(0xFFD77CCC).withValues(alpha: .2),
          companyName: "CircoLife",
          position: "Software Engineer",
          duration: "Jun 2024 - present",
          description:
              "• Developed, tested, and deployed Circolife’s main customer-facing app, Service App, backend services, MQTT server, RabbitMQ integrations, and cloud infrastructure, ensuring high performance and scalability.\n• Built and deployed 15+ new features with comprehensive unit testing and performed major system upgrades on CircoLife 2.0 for multiple customers, enhancing product functionality and user experience.",
          companyLogo: 'circolife-logo.svg',
        ),
        SizeConstant.getHeightSpace(10),
        const ExperienceCard(
            backgroundColor: Color(0xFF672A70),
            companyName: "BKS MyGold Pvt. Ltd",
            companyColor: Color(0xFFC5903E),
            roleColor: Color(0xFFd4d4d4),
            position: "Software Developer",
            duration: "Jun 2023 - Jun 2024",
            descriptionColor: Color(0xFFe5e5e5),
            description:
                "• Developed a business E-commerce app with Flutter Bloc and Blockchain. Integrated real-time APIs and worked on Backend with MongoDB. App Facilitates you to buy, sell and invest your digital gold.\n• Helped in Sprint development by leading the revamp team.",
            companyLogo: 'bks-logo.svg'),
        SizeConstant.getHeightSpace(10),
        const ExperienceCard(
            companyName: "AiBi Street Pvt. Ltd",
            position: "Android & Python Developer",
            duration: "Jan 2022 - Dec 2022",
            isSvgLogo: false,
            description:
                "• Developed a Student Audit Android app to track and analyze student progress after school lectures with FirebaseRealtime Database and Cloud Storage. Led a team of 2 members and accomplished the project in a designated time.\n • Developed a Django website with Particle Swarm Optimization technique, applied to optimize parameters influencing dam stability, and executed 4 different optimization functions that would prevent a dam from sliding and collapsing.",
            companyLogo: 'aibi-logo.png')
      ],
    );
  }
}
