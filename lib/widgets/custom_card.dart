import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key,
    required this.productName,
    required this.productDesc,
    required this.productPrice,
    required this.productImage,
    required this.onAddPressed,
  });
  final productImage;
  final productName;
  final productDesc;
  final productPrice;
  final VoidCallback onAddPressed;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
               Container(
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(10),
              ),
              padding: EdgeInsets.all(10),
              child: Image.asset(
                productImage,
                height: 136,
                fit: BoxFit.cover,
              ),
            ),
           Positioned(
            bottom: 0,right: 5,
            child: 
              const CircleAvatar(
                radius: 20,
                backgroundColor: Colors.white,
                child:  Icon(Icons.add,),),
            
             ),
            ],
            
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  productName,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      'assets/assets/icons/star.png',
                      width: 18,
                    ),
                    Text(
                      productDesc,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8),
                Text(
                  productPrice,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
