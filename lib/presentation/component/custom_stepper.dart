import 'package:flutter/material.dart';
import 'package:nami/core/resources/colors.dart';

class CustomStepper extends StatelessWidget {
  const CustomStepper({super.key});

  final int activeStep=1;

  @override
  Widget build(BuildContext context) {
  return Directionality(
    textDirection: TextDirection.rtl,
    child: SizedBox(
      height: 8,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal:22.0),
        child: Row(
          children: List.generate(
            6,
            (index) => Expanded(
              child: Container(
                height: double.infinity,
                 decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(100),
                color: activeStep > index ? AppColors.kRed : AppColors.kLightGray,
              )),
            ),
          ),
        ),
      ),
    )
   
  );

  }
}