import 'package:flutter/material.dart';
import '../constants/constant_fonts.dart';

class EducationSection extends StatelessWidget {
  const EducationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Skills",
          style: TextStyle(fontFamily: ConstantFonts.poppinsBold, fontSize: 20, color: Colors.black),
        ),
      ],
    );
  }
}
