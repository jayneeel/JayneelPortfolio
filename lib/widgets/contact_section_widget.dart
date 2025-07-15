import 'package:flutter/material.dart';

import '../constants/constant_fonts.dart';
import '../constants/constant_size.dart';

class ContactMeSection extends StatelessWidget {
  const ContactMeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        showModalBottomSheet(context: context, builder: (context){
          return Container(
            width: 475,
            height: 400,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10)),
              color: Colors.white,
            ),
            child: const Column(
              children: [
              ],
            ),
          );
        });
      },
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: const Color(0xFFDCF4D2),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(Icons.add_call, size: 50,),
            SizeConstant.getWidthSpace(10),
            const Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text("Contact Me!", style: TextStyle(fontFamily: ConstantFonts.interBold, color: Colors.black),),
              ],
            )
          ],
        ),
      ),
    );
  }
}
