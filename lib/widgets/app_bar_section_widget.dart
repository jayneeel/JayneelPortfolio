import 'package:flutter/material.dart';
import 'package:jayneel_portfolio/constants/constant_size.dart';
import '../constants/constant_fonts.dart';
import '../screens/open_asset.dart';

class AppBarSection extends StatelessWidget {
  const AppBarSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.account_circle,
          size: 50,
        ),
        SizeConstant.getWidthSpace(10),
        const Text(
          "Jayneel Manish Kanungo",
          style: TextStyle(fontSize: 28, fontFamily: ConstantFonts.poppinsBold, color: Colors.black),
        ),
      ],
    );
  }
}