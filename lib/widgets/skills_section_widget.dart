import 'package:flutter/material.dart';
import 'package:jayneel_portfolio/widgets/skill_card.dart';
import '../constants/constant_fonts.dart';
import '../constants/constant_size.dart';


class SkillSection extends StatelessWidget {
  const SkillSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Skills",
          style: TextStyle(fontFamily: ConstantFonts.interBold, fontSize: 20, color: Colors.black),
        ),
        SizeConstant.getHeightSpace(16),
        const SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SkillCard(technology: "Flutter", image: "assets/icons/flutter.svg"),
              SkillCard(technology: "Dart", image: "assets/icons/dart.svg"),
              SkillCard(technology: "Kotlin", image: "assets/icons/kotlin.svg"),
              SkillCard(technology: "Java", image: "assets/icons/java.svg"),
              SkillCard(technology: "Android", image: "assets/icons/android.svg"),
              SkillCard(technology: "Python", image: "assets/icons/python.svg"),
              SkillCard(technology: "Tensorflow", image: "assets/icons/tensorflow.svg"),
              SkillCard(technology: "Git", image: "assets/icons/git.svg"),
              SkillCard(technology: "Firebase", image: "assets/icons/firebase.svg"),
              SkillCard(technology: "Google Cloud", image: "assets/icons/google_cloud.svg"),
              SkillCard(technology: "SqLite", image: "assets/icons/sqlite.svg"),
            ],
          ),
        )
      ],
    );
  }
}