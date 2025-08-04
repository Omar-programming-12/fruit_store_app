
import 'package:flutter/material.dart';
import 'package:fruit_store_app/models/category_model.dart';
import 'package:fruit_store_app/models/product_model.dart';
import 'package:fruit_store_app/widgets/category_item.dart';
import 'package:fruit_store_app/widgets/custom_app_bar.dart';
import 'package:fruit_store_app/widgets/custom_card.dart';
import 'package:fruit_store_app/widgets/fruit_slider_state.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<ProductModel> product = [
    ProductModel(
      name: 'Banana',
      image: 'assets/assets/fruits/banana.png',
      price: 3.99,
      rate: 4.8,
      rateCount: (287),
    ),
    ProductModel(
      name: 'Pepper',
      image: 'assets/assets/fruits/papper.png',
      price: 2.99,
      rate: 4.6,
      rateCount: (265),
    ),
    ProductModel(
      name: 'Orange',
      image: 'assets/assets/fruits/orange.png',
      price: 4.99,
      rate: 4.4,
      rateCount: (113),
      
    )
  ];
     
  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
       body:  SafeArea(
         child: SingleChildScrollView(
           child: Column(
             children: [
               CustomAppBar(),
               SizedBox(height: 12),
               FruitSlider(),
               SizedBox(
                 height: 120, 
                 child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: ListView(
              
              scrollDirection: Axis.horizontal,
              children: const [
                CategoryItem(
                    imagePath: 'assets/assets/category/fruits.png',
                    label: 'Fruits',
                    imageSize: 65),
                    SizedBox(width: 12),
                CategoryItem(
                    imagePath: 'assets/assets/category/egg.png',
                    label: 'Milk & Egg',
                    imageSize: 65),
                    SizedBox(width: 12),
                CategoryItem(
                    imagePath: 'assets/assets/category/bavergas.png',
                    label: 'Bavergas',
                    imageSize: 65),
                    SizedBox(width: 12),
                CategoryItem(
                    imagePath: 'assets/assets/category/luandry.png',
                    label: 'luandry',
                    imageSize: 65),
                      SizedBox(width: 12),
                CategoryItem(
                    imagePath: 'assets/assets/category/vegatbels.png',
                    label: 'Vegetabls',
                    imageSize: 65),
              ],
            ),
                 ),
               ),
               SizedBox(height: 20),
Padding(
  padding: const EdgeInsets.symmetric(horizontal: 10),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Suggestion Products',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          Text(
            'See all',
            style: TextStyle(
              color: Colors.green,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
        ],
      ),
      SizedBox(height: 10),
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Wrap(
          spacing: 12,
          runSpacing: 12,
          children: [
            CustomCard(
              productImage: 'assets/assets/fruits/banana.png',
              productName: ' Banana',
              productDesc: '  4.8 (287)',
              productPrice: r'  $3.99',
            ),
            CustomCard(
              productImage: 'assets/assets/fruits/papper.png',
              productName: ' Pepper',
              productDesc: '  4.6 (235)',
              productPrice: r'  $2.99',
            ),
             CustomCard(
              productImage: 'assets/assets/fruits/orange.png',
              productName: ' Orange',
              productDesc: '  3.9 (118)',
              productPrice: r'  $4.99',
            ),
           
          ],
        ),
      ),
    ],
  ),
),


             ],
           ),
         ),
       ),

      
    );
  }
}




                   

