import 'package:flutter/material.dart';
import 'package:jayneel_portfolio/constants/constant_size.dart';
import '../constants/constant_fonts.dart';

class AppBarSection extends StatelessWidget {
  const AppBarSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset("assets/images/jayneel_pic.png", width: 50, height: 50,)),
        SizeConstant.getWidthSpace(10),
        const Flexible(
          child: Text(
            "Jayneel Manish Kanungo",
            style: TextStyle(fontSize: 28, fontFamily: ConstantFonts.poppinsBold, color: Colors.black),
          ),
        ),
      ],
    );
  }
}