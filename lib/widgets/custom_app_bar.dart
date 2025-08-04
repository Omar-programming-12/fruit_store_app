

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return   AppBar(
       leading:const SizedBox.shrink(),
       leadingWidth: 0,
        title: Row(
          children: [
           
           const Icon(Icons.delivery_dining, size: 35,),
           const SizedBox(height: 13,),
           const Text('     61 Cairo Street..'),
           const SizedBox(height: 13),
           const  Icon(Icons.keyboard_arrow_down_rounded , size: 30),
           const Spacer(),
             SvgPicture.asset('assets/assets/icons/basket.svg',width: 28,height: 28,),
          ],
        ),
      );
  }
}