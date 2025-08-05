import 'package:flutter/material.dart';

class CustomCard extends StatefulWidget {
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
  State<CustomCard> createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  bool isAdded = false;
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
                widget.productImage,
                height: 136,
                fit: BoxFit.cover,
              ),
            ),
            if(isAdded)
            Positioned(
              top: 5,
              right: 5,
              child: GestureDetector(
                onTap: (){
                  setState(() {
                    isAdded = false;
                  });
                },
                child: CircleAvatar(
                  radius: 10,
                  backgroundColor: Colors.red,
                  child: Icon(Icons.close,size: 12,color: Colors.white,),
                ),
              )
              ),
           Positioned(
            bottom: 0,right: 5,
            child: 
              GestureDetector(
                onTap: (){
                  setState(() {
                    isAdded = true;
                  });
                  widget.onAddPressed();
                },
                child: const CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.white,
                  child:  Icon(Icons.add,),),
              ),
            
             ),
            ],
            
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.productName,
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
                      widget.productDesc,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8),
                Text(
                  widget.productPrice,
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
