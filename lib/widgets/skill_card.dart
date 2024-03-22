import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jayneel_portfolio/constants/constant_fonts.dart';
import 'package:jayneel_portfolio/constants/constant_size.dart';


class SkillCard extends StatelessWidget {
  const SkillCard({super.key, required this.image, required this.technology});
  final String image;
  final String technology;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color(0xFFEAEAEA)
      ),
      padding: const EdgeInsets.all(10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset(image, width: 50, height: 50,),
          SizeConstant.getHeightSpace(10),
          Text(technology, style: const TextStyle(fontFamily: ConstantFonts.poppinsMedium, fontSize: 16, color: Colors.black54),)
        ],
      ),
    );
  }
}
