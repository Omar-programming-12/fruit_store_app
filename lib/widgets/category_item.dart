import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key, required this.imagePath, required this.label,required this.imageSize});
  final String imagePath;
  final String label;
  final double imageSize;
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        CircleAvatar(
          backgroundColor: Colors.grey.shade200,
          radius: 40,
         child: SizedBox(
          width: imageSize,
          height: imageSize,
          child: Image.asset(imagePath , fit: BoxFit.contain,),
         ),
          
        ),
        SizedBox(height: 8),
        Text(label , style: TextStyle(fontSize: 16),),
      ],
    );
  }
}