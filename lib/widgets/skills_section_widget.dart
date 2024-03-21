import 'package:flutter/material.dart';
import 'package:jayneel_portfolio/widgets/skill_card.dart';
import '../constants/constant_fonts.dart';


class SkillSection extends StatelessWidget {
  const SkillSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Skills",
          style: TextStyle(fontFamily: ConstantFonts.poppinsBold, fontSize: 20, color: Colors.black),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SkillCard(technology: "Flutter", image: ""),
              SkillCard(technology: "Flutter", image: ""),
              SkillCard(technology: "Flutter", image: ""),
              SkillCard(technology: "Flutter", image: ""),
              SkillCard(technology: "Flutter", image: ""),
              SkillCard(technology: "Flutter", image: ""),
              SkillCard(technology: "Flutter", image: ""),
              SkillCard(technology: "Flutter", image: ""),
              SkillCard(technology: "Flutter", image: ""),
            ],
          ),
        )
      ],
    );
  }
}