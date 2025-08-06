

import 'package:flutter/material.dart';

class BasketBottomSheet extends StatelessWidget {
  const BasketBottomSheet ({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text('Cart',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          const SizedBox(height: 16),
          
        ],
      ),
    );
  }
}