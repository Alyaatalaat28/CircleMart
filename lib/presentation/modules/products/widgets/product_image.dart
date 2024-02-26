import 'package:flutter/material.dart';
import 'package:nami/core/extensions/num_extension.dart';
import 'package:nami/core/resources/assets.dart';

class ProductImage extends StatelessWidget {
  const ProductImage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(16.0),
      child: SizedBox(
        width: double.infinity,
        height:234.h,
        child: const Image(
          image:AssetImage(
            Assets.details,
          ),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}