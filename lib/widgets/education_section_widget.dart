import 'package:flutter/material.dart';
import '../constants/constant_fonts.dart';

class EducationSection extends StatelessWidget {
  const EducationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Education",
          style: TextStyle(fontFamily: ConstantFonts.interBold, fontSize: 20, color: Colors.black),
        ),
        educationCard("Datta Meghe College of Engineering, Airoli"),
        educationCard("Vidya Prasarak Mandal Polytechnic, Thane"),
        educationCard("D.A.V Public School, Airoli"),
      ],
    );
  }

  Container educationCard(String instituteName) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border.all(color: const Color(0xFF464646)),
          borderRadius: BorderRadius.circular(10),
          color: Colors.grey.shade100,
        ),
        child: Text(instituteName),
      );
  }
}
