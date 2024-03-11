import 'package:flutter/material.dart';
import 'package:nami/core/extensions/num_extension.dart';

class ProductImage extends StatelessWidget {
  const ProductImage({super.key,required this.image});
final String image;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(16.0),
      child: SizedBox(
        width: double.infinity,
        height:234.h,
        child: Image(
          image:AssetImage(
            image
          ),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}