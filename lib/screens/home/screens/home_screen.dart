import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:jayneel_portfolio/constants/constant_fonts.dart';
import 'package:jayneel_portfolio/constants/constant_size.dart';
import 'package:jayneel_portfolio/widgets/education_section_widget.dart';
import '../../../widgets/app_bar_section_widget.dart';
import '../../../widgets/experience_section_widget.dart';
import '../../../widgets/featured_section_widget.dart';
import '../../../widgets/project_section_widget.dart';
import '../../../widgets/skills_section_widget.dart';
import '../../../widgets/status_bar_section_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late String time;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    final now = DateTime.now();
    time = DateFormat.jm().format(now);
    setState(() {});
  }

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
              padding: const EdgeInsets.all(18),
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.black, width: 10),
                  borderRadius: const BorderRadius.only(topLeft: Radius.circular(70), topRight: Radius.circular(70))),
              child: ScrollConfiguration(
                behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      StatusBarSection(time: time),
                      const AppBarSection(),
                      SizeConstant.getHeightSpace(30),
                      const FeaturedSection(),
                      SizeConstant.getHeightSpace(30),
                      const ExperienceSection(),
                      SizeConstant.getHeightSpace(30),
                      const SkillSection(),
                      SizeConstant.getHeightSpace(30),
                      const ProjectsSection(),
                      SizeConstant.getHeightSpace(30),
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
