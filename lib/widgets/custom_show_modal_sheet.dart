

import 'package:flutter/material.dart';

class BasketBottomSheet extends StatelessWidget {
 
     BasketBottomSheet ({super.key,required this.basketList});
 List<dynamic> basketList;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text('Cart',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          const SizedBox(height: 16),
          ...basketList.map((item) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 6),
            child: Row(
              children: [
                Container(
                  width: 45,
                  height: 45,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    shape: BoxShape.circle,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(4),
                    child: Image.asset(item['image']!),
                  ),
                ),
                SizedBox(width: 12),
                Text('4 Bunch of ${item['title']}',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                Text('\$${item['Price']}'),
              ],
            ),
          ),
          ),
          ListView.builder(
            itemCount: basketList.length,
            itemBuilder: (context , index){
              final item = basketList[index];
              return ListTile(
                leading: Image.asset(
                  item['image']!,
                  width: 40,
                  height: 40,
                ),
                title: Text(item['title']!),
              );
            },
          )




          // Row(
          //   children: [
          //     IconButton(onPressed: (){}, icon: Icon(Icons.delete),),
          //     Text('${item['quantity']}'),
          //     IconButton(onPressed: (){}, icon: Icon(Icons.add)),
          //   ],
          // ),
        ],
      ),
    );
  }
}