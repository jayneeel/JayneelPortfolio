import 'package:flutter/material.dart';

import '../constants/constant_fonts.dart';
import '../constants/constant_size.dart';

class ExperienceCard extends StatelessWidget {
  const ExperienceCard({super.key, required this.companyName, required this.position, required this.duration, required this.description});
  final String companyName;
  final String position;
  final String duration;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: const Color(0xFF707070)),
          color: const Color(0xFFFFE3FB)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(companyName, style: const TextStyle(fontFamily: ConstantFonts.poppinsBold, fontSize: 20),),
          SizeConstant.getHeightSpace(10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(position),
              Text(duration),
            ],
          ),
          SizeConstant.getHeightSpace(10),
          Text(description, softWrap: true,),
        ],
      ),
    );
  }
}
