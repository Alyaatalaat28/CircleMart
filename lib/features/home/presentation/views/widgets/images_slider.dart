import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nami/core/utils/constants.dart';

class ImageSlider extends StatelessWidget {
  const ImageSlider({super.key});

 @override
  Widget build(BuildContext context) {
    return  CarouselSlider(
   items:sliderImages.map((image) {
        return SvgPicture.asset(image, fit: BoxFit.cover);
      }).toList(),
   options: CarouselOptions(
      height: 200,
      viewportFraction: 1.0,
      initialPage: 0,
      enableInfiniteScroll: true,
      reverse: false,
      autoPlay: true,
      autoPlayInterval:const Duration(seconds: 3),
      autoPlayAnimationDuration:const Duration(seconds: 1),
      autoPlayCurve: Curves.fastOutSlowIn,
      enlargeFactor: 0.3,
      scrollDirection: Axis.horizontal,
   )
      
  );
}
}