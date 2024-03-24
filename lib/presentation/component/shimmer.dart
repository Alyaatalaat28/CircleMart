import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerWidget extends StatelessWidget {
  const ShimmerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
                  baseColor: Colors.grey[300]!,
                  highlightColor:Colors.grey[100]!,
                  child: Container(
                    width: double.infinity,
                    color:Colors.white,
                  )
                  );
  }
}