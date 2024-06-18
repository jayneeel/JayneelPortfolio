import 'package:flutter/material.dart';

import '../constants/constant_fonts.dart';
import '../constants/constant_size.dart';

class ExperienceCard extends StatefulWidget {
  const ExperienceCard({super.key, required this.companyName, required this.position, required this.duration, required this.description});
  final String companyName;
  final String position;
  final String duration;
  final String description;

  @override
  State<ExperienceCard> createState() => _ExperienceCardState();
}

class _ExperienceCardState extends State<ExperienceCard> {
  bool expanded = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: const Color(0xFF707070)),
          color: const Color(0xFFFFE3FB)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(widget.companyName, style: const TextStyle(fontFamily: ConstantFonts.poppinsBold, fontSize: 20),),
              IconButton(icon: (expanded) ? const Icon(Icons.expand_less_rounded) : const Icon(Icons.expand_more_rounded), onPressed: (){
                setState(() {
                  expanded = !expanded;
                });
              },)
            ],
          ),
          SizeConstant.getHeightSpace(10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(child: Text(widget.position, style: const TextStyle(color: Color(0xFF080808), fontFamily: ConstantFonts.poppinsMedium))),
              Flexible(child: Text(widget.duration, style: const TextStyle(fontStyle: FontStyle.italic),)),
            ],
          ),
          SizeConstant.getHeightSpace(10),
          (expanded)?
          Text(widget.description, softWrap: true, style: const TextStyle(fontSize: 14, color: Color(0xFF080808)),): Container()
        ],
      ),
    );
  }
}
