import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../constants/constant_fonts.dart';
import '../screens/open_asset.dart';

class FeaturedSection extends StatelessWidget {
  const FeaturedSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Featured",
          style: TextStyle(fontFamily: ConstantFonts.poppinsBold, fontSize: 20, color: Colors.black),
        ),
        CarouselSlider(items: [
          Container(
            width: 350,
            decoration: BoxDecoration(color: Colors.grey.shade200, borderRadius: BorderRadius.circular(10)),
            child: Image.asset("assets/images/hackathon_certificate.png"),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => OpenAsset(widget: Image.asset("assets/images/hackathon_certificate.png"),),
              ));
            },
            child: Container(
              width: 350,
              decoration: BoxDecoration(color: Colors.grey.shade200, borderRadius: BorderRadius.circular(10)),
              child: Image.asset("assets/images/hackathon_certificate.png"),
            ),
          ),
          Container(
            width: 350,
            decoration: BoxDecoration(color: Colors.grey.shade200, borderRadius: BorderRadius.circular(10)),
            child: Image.asset("assets/images/hackathon_certificate.png"),
          ),
          Container(
            width: 350,
            decoration: BoxDecoration(color: Colors.grey.shade200, borderRadius: BorderRadius.circular(10)),
            child: Image.asset("assets/images/hackathon_certificate.png"),
          ),
        ], options: CarouselOptions(autoPlay: true)),
      ],
    );
  }
}