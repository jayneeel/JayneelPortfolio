import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:jayneel_portfolio/constants/constant_size.dart';
import 'dart:html' as html;
import '../constants/constant_fonts.dart';

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
        CarouselSlider(items: const [
          FeaturedItem(image: 'assets/images/hackathon_certificate.png',),
          FeaturedItem(image: 'assets/images/ieee_certificate.png',),
        ], options: CarouselOptions(autoPlay: true)),
      ],
    );
  }
}

class FeaturedItem extends StatelessWidget {
  const FeaturedItem({
    super.key, required this.image,
  });
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      decoration: BoxDecoration(color: Colors.grey.shade200, borderRadius: BorderRadius.circular(10)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          InkWell(
              onTap: () {
                html.window.open("https://www.youtube.com", "jayneel");
              },
              child: Image.asset(image)),
          SizeConstant.getHeightSpace(15),
          Row(
            children: [
              SizeConstant.getWidthSpace(15),
              InkWell(
                child: Row(
                  children: [
                    const Icon(Icons.thumb_up_alt_outlined),
                    SizeConstant.getWidthSpace(8),
                    const Text("5")
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}