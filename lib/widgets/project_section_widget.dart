import 'package:flutter/material.dart';

import '../constants/constant_fonts.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Projects",
          style: TextStyle(fontFamily: ConstantFonts.poppinsBold, fontSize: 20, color: Colors.black),
        ),
      ],
    );
  }
}