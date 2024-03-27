import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jayneel_portfolio/constants/constant_size.dart';
import 'package:jayneel_portfolio/screens/home/controller/home_controller.dart';
import 'dart:html' as html;
import '../constants/constant_fonts.dart';

class FeaturedSection extends StatelessWidget {
  const FeaturedSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final HomeController controller = Get.put(HomeController());
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Featured",
          style: TextStyle(fontFamily: ConstantFonts.poppinsBold, fontSize: 20, color: Colors.black),
        ),
        Obx(() => CarouselSlider(items: [
          FeaturedItem(image: 'assets/images/hackathon_certificate.png', onTap: ()=> controller.likeUnlike, likes: controller.hackathonLikes.value, ),
          FeaturedItem(image: 'assets/images/ieee_certificate.png', onTap: () {  }, likes: controller.hackathonLikes.value),
        ], options: CarouselOptions(autoPlay: true)),)
      ],
    );
  }
}

class FeaturedItem extends StatelessWidget {
  const FeaturedItem({
    super.key, required this.image, required this.onTap, required this.likes,
  });
  final String image;
  final Function() onTap;
  final int likes;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      decoration: BoxDecoration(color: Colors.grey.shade200, borderRadius: BorderRadius.circular(10)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
              onTap: () => Container(),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(image))),
          SizeConstant.getHeightSpace(15),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizeConstant.getWidthSpace(15),
              InkWell(
                onTap: onTap,
                child: Row(
                  children: [
                    const Icon(Icons.thumb_up_alt_outlined),
                    SizeConstant.getWidthSpace(8),
                    Text(likes.toString())
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