import 'dart:async';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class FruitSlider extends StatefulWidget {
  const FruitSlider({super.key});

  @override
  State<FruitSlider> createState() => _FruitSliderState();
}

class _FruitSliderState extends State<FruitSlider> {
  final PageController _controller = PageController();
  int _currentIndex = 0;
  int _currentPage = 0;
  late Timer _timer;
   final List<String> assetsList = [
    'assets/assets/banners/Slider 1.png',
    'assets/assets/banners/Slider 2.png',
    'assets/assets/banners/Slider 3.png',
  ];
  @override
  void initState() {
    super.initState();

    _timer = Timer.periodic(Duration(seconds: 3), (Timer timer){

      if (_currentPage < assetsList.length - 1){

        _currentPage++;
      } else{_currentPage = 0;}
      _controller.animateToPage(
        _currentPage, duration: Duration(milliseconds: 500), curve: Curves.easeInOut);
    },);
  }
  @override
  void dispose() {
    _timer.cancel();
    _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
  padding: const EdgeInsets.symmetric(vertical: 16),
  child: Column( // ← تعديل: جمعنا السلايدر والـ Row في Column
    children: [
      CarouselSlider.builder(
        itemCount: assetsList.length,
        itemBuilder: (context , index , realIndex){
          return ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.asset(
              assetsList[index],
              fit: BoxFit.cover,  
              width: double.infinity,
            ),
          );
        },
        options: CarouselOptions(
          height: 200,
          autoPlay: true,
          autoPlayInterval: Duration(seconds: 3),
          autoPlayAnimationDuration: Duration(milliseconds: 800),
          enlargeCenterPage: true,
          viewportFraction: 0.9,
          enableInfiniteScroll: true,
          onPageChanged: (index , reason){
            setState(() {
              _currentIndex = index;
            });
          },
        ),
      ),
    
      Row(
        
        mainAxisAlignment: MainAxisAlignment.center,
        children: 
        List.generate(assetsList.length , (index){
          return Container(
            margin: EdgeInsets.symmetric(horizontal: 4) ,
            width: _currentIndex == index ? 12 : 8,
            height: _currentIndex == index ? 12 : 8,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: _currentIndex == index ? Colors.green : Colors.grey,
            ),
          );
        })
        
      ),
    ],
  ),
),

      ],
      
    );
  }
}