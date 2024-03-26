import 'package:flutter/material.dart';
import 'package:jayneel_portfolio/constants/constant_size.dart';
import 'package:jayneel_portfolio/widgets/education_section_widget.dart';
import '../../../widgets/app_bar_section_widget.dart';
import '../../../widgets/experience_section_widget.dart';
import '../../../widgets/featured_section_widget.dart';
import '../../../widgets/project_section_widget.dart';
import '../../../widgets/skills_section_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Stack(
      children: [
        Container(
          width: double.infinity,
          height: double.maxFinite,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            colors: [
              Color(0xFF050505),
              Color(0xFF2A2B30),
            ],
          )),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 40),
          child: Center(
            child: Container(
              width: 500,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.black, width: 5),
                  borderRadius: const BorderRadius.only(topLeft: Radius.circular(70), topRight: Radius.circular(70))),
              child: ScrollConfiguration(
                behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                          child: Container(
                        width: 200,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.black87,
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 40,
                              height: 40,
                              decoration: const BoxDecoration(
                                color: Colors.grey,
                                shape: BoxShape.circle,
                              ),
                            )
                          ],
                        ),
                      )),
                      const AppBarSection(),
                      SizeConstant.getHeightSpace(22),
                      const FeaturedSection(),
                      SizeConstant.getHeightSpace(22),
                      const ExperienceSection(),
                      SizeConstant.getHeightSpace(22),
                      const SkillSection(),
                      SizeConstant.getHeightSpace(22),
                      const ProjectsSection(),
                      SizeConstant.getHeightSpace(22),
                      const EducationSection()
                    ],
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    )));
  }
}
