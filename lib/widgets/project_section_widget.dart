import 'dart:math';

import 'package:flutter/material.dart';
import 'package:jayneel_portfolio/constants/constant_size.dart';
import 'package:jayneel_portfolio/constants/contant_colors.dart';

import '../constants/constant_fonts.dart';
import 'dart:html' as html;

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Projects",
          style: TextStyle(fontFamily: ConstantFonts.poppinsBold, fontSize: 20, color: Colors.black),
        ),
        SizeConstant.getHeightSpace(16),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              const ProjectCard(
                projectName: "SeekReunite",
                image: "assets/images/fitstack_app.png",
                technologies: ["Flutter", "Dart", "ML Kit", "Firebase"],
              ),
              const ProjectCard(
                projectName: "FitStack",
                image: "assets/images/fitstack_app.png",
                technologies: ["Android", "Flutter", "Dart", "Kotlin", "Java", "Firebase"],
              ),
              const ProjectCard(
                projectName: "TruFit Network",
                image: "assets/images/fitstack_app.png",
                technologies: ["Android", "Flutter", "Dart", "Kotlin", "Java", "Firebase"],
              ),
              const ProjectCard(
                projectName: "FitPhysioPro",
                image: "assets/images/fitstack_app.png",
                technologies: [
                  "Python",
                  "MediaPipe",
                  "FaceNet",
                  "Firebase",
                ],
              ),
              const ProjectCard(
                projectName: "KickStash",
                image: "assets/images/fitstack_app.png",
                technologies: ["Flutter", "Dart", "Provider"],
              ),
              InkWell(
                onTap: () => html.window.open("https://github.com/jayneeel", "Jayneel"),
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: const BoxDecoration(shape: BoxShape.circle, color: Colors.blueAccent),
                  child: const Icon(
                    Icons.arrow_forward_rounded,
                    size: 50,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}

class ProjectCard extends StatelessWidget {
  const ProjectCard({super.key, required this.projectName, required this.image, required this.technologies});
  final String projectName;
  final String image;
  final List<String> technologies;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      margin: const EdgeInsets.only(right: 15),
      padding: const EdgeInsets.all(12),
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(10), border: Border.all(color: const Color(0xFF788A8E))),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            image,
            width: 200,
            height: 350,
          ),
          SizeConstant.getHeightSpace(15),
          Text(
            projectName,
            style: const TextStyle(fontFamily: ConstantFonts.poppinsMedium, fontSize: 18),
          ),
          SizeConstant.getHeightSpace(10),
          SizedBox(
              height: 40,
              child: ListView.builder(
                itemBuilder: (context, index) {
                  final technology = technologies[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Chip(
                      backgroundColor: ConstantColors.chipColors[Random().nextInt(ConstantColors.chipColors.length)],
                      label: Text(technology),
                      labelStyle: const TextStyle(color: ConstantColors.whiteColor),
                      padding: const EdgeInsets.all(5),
                    ),
                  );
                },
                shrinkWrap: true,
                itemCount: technologies.length,
                scrollDirection: Axis.horizontal,
              ))
        ],
      ),
    );
  }
}

class TechnologyChip extends StatelessWidget {
  const TechnologyChip({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
      decoration: BoxDecoration(
          border: Border.all(color: const Color(0xFFF134B7)),
          borderRadius: BorderRadius.circular(50),
          color: const Color(0xFFFA71E1)),
      child: const Text(
        "Android",
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
