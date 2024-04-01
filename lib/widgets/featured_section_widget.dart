import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jayneel_portfolio/constants/constant_size.dart';
import 'package:jayneel_portfolio/screens/home/controller/home_controller.dart';
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
        SizeConstant.getHeightSpace(16),
        Obx(() => CarouselSlider(items: [
              FeaturedItem(
                image: 'assets/images/hackathon_certificate.png',
                onTap: () => controller.likeUnlike(),
                likes: controller.hackathonLikes.value,
                icon: controller.icon.value,
                title: 'National Level Hackathon',
              ),
              FeaturedItem(
                image: 'assets/images/ieee_certificate.png',
                onTap: () {},
                likes: controller.hackathonLikes.value,
                icon: controller.icon.value,
                title: 'IEEE National Workshop',
              ),
            ], options: CarouselOptions(autoPlay: true)))
      ],
    );
  }
}

class FeaturedItem extends StatelessWidget {
  const FeaturedItem({
    super.key,
    required this.image,
    required this.onTap,
    required this.likes,
    required this.icon,
    required this.title,
  });
  final String image;
  final String title;
  final Function() onTap;
  final int likes;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(color: Colors.grey.shade200, borderRadius: BorderRadius.circular(10)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
              onTap: () => Container(),
              child: ClipRRect(borderRadius: BorderRadius.circular(10), child: Image.asset(image))),
          SizeConstant.getHeightSpace(10),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  title,
                  style:
                      const TextStyle(fontFamily: ConstantFonts.poppinsMedium, color: Color(0xFF0D0D0D), fontSize: 14),
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
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
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
