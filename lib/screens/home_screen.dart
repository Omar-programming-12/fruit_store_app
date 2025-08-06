
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruit_store_app/constants.dart';
import 'package:fruit_store_app/models/product_model.dart';
import 'package:fruit_store_app/widgets/category_item.dart';
import 'package:fruit_store_app/widgets/custom_app_bar.dart';
import 'package:fruit_store_app/widgets/custom_card.dart';
import 'package:fruit_store_app/widgets/custom_show_modal_sheet.dart';
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
  List basketList = [];
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
                    imageSize: 65
                    
                    ),
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
              onAddPressed: () {
                setState(() {
                  basketList.add(product[0].image);
                });
              },
              onRemovePressed: () {
     setState(() {
      basketList.remove(product[0].image);
    });
  },
            ),
            CustomCard(
              productImage: 'assets/assets/fruits/papper.png',
              productName: ' Pepper',
              productDesc: '  4.6 (235)',
              productPrice: r'  $2.99',
              onAddPressed: () {
                setState(() {
                  basketList.add(product[1].image);
                });
              },
              
             onRemovePressed: () {
    setState(() {
      basketList.remove(product[1].image);
    });
  },
            ),
             CustomCard(
              productImage: 'assets/assets/fruits/orange.png',
              productName: ' Orange',
              productDesc: '  3.9 (118)',
              productPrice: r'  $4.99',
              onAddPressed: () {
                setState(() {
                  basketList.add(product[2].image);
                });
              },
            onRemovePressed: () {
    setState(() {
      basketList.remove(product[2].image);
    });
  },
            ),
          ],
        ),
      ),
      SizedBox(height: 10,),      //Cart Widget
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 4),
        child: Container(
          width: double.infinity,
          height: 70,
          decoration: BoxDecoration(
            color: kPrimaryColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            
            children: [
              
              SizedBox(
                width: 220,
            child: 
              ListView.builder(
              itemCount: basketList.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context , index){
                return Padding(
                  padding: const EdgeInsets.only(left: 5.5),
                  child: Container(
                     width: 45,
                     height: 45,
                               decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(4),
                              child: Image.asset(basketList[index]),
                            ),
                  ),
                );
              },
            ),
              ),
              
               Container(
                width: 2,
                height: 40,
                color: Colors.white,
                  
              ),
              TextButton(onPressed: (){
                showModalBottomSheet(context: context, builder: (context) => BasketBottomSheet()
              );},
             child:const Text('  View Basket' , style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),), ),
              Spacer(),
 SvgPicture.asset('assets/assets/icons/basket.svg',color: Colors.white,width: 25,height: 25,),
              if(basketList.isNotEmpty)
              Positioned(
              right: 0,
              top: 0,
              child: 
              CircleAvatar(
                radius: 8,
                backgroundColor: Colors.red,
                child: Text(
                  basketList.length.toString(),
                  style: TextStyle(
                    fontSize: 10,
                    color: Colors.white
                  ),
                ),
              ),),
              SizedBox(width: 10), 
             ],
          ),
      
          
        ),
      ),
      SizedBox(height: 10,),
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
