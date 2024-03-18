import 'package:flutter/material.dart';
import 'package:nami/core/resources/colors.dart';
import 'package:nami/presentation/modules/orders/orders_view_model.dart';
import 'package:provider/provider.dart';

class CustomStepper extends StatelessWidget {
  const CustomStepper({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<OrdersViewModel>(
      builder: (context, provider, child) => Directionality(
        textDirection: TextDirection.rtl,
        child: SliderTheme(
          data: SliderTheme.of(context).copyWith(
            thumbShape: const RoundSliderThumbShape(
              enabledThumbRadius: 0.0,
            ),
            trackHeight: 8,
          ),
          child: Slider(
              value: provider.activeStep,
              min: 0,
              max: 6,
              activeColor: AppColors.kRed,
              inactiveColor: AppColors.kLightGray,
              onChanged: (value) {
                provider.activeStep != value;
              }),
        ),
      ),
    );
  }
}
