

import 'package:flutter/material.dart';

class BasketBottomSheet extends StatelessWidget {
 List<Map<String , String >> basketList = [
  {
    'image': 'assets/assets/fruits/banana.png',
    'title': 'Banana'
  },
  {
    'image': 'assets/assets/fruits/papper.png',
    'title': 'Pepper'
  },
  {
    'image': 'assets/assets/fruits/orange.png',
    'title': 'Orange'
  }  
 ];
   BasketBottomSheet ({super.key,});
 
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text('Cart',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          const SizedBox(height: 16),
          basketList.map((item) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 6),
            child: Row(
              children: [
                Container(
                  width: 45,
                  height: 45,
                  decoration: BoxDecoration(
                    color: Colors.grey[300]
                    shape: BoxShape.circle,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(4),
                    child: Image.asset(item['image']!),
                  ),
                ),
                SizedBox(width: 12),
                Text(item['title']!,style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),)
              ],
            ),
          ),),
        ],
      ),
    );
  }
}