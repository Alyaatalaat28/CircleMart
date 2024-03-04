import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nami/core/extensions/num_extension.dart';
import 'package:nami/core/resources/app_styles.dart';
import 'package:nami/core/resources/colors.dart';
import 'package:nami/presentation/modules/invoice/invoice_view_model.dart';
import 'package:provider/provider.dart';

class PaymentMethodItem extends StatelessWidget {
  const PaymentMethodItem({super.key,required this.image,required this.text,required this.index});

final String image;
final String text;
final int index;

  @override
  Widget build(BuildContext context) {
    return  Consumer<InvoiceViewModel>(
      builder:(BuildContext context,provider, child)=> GestureDetector(
        onTap:()=>provider.updateSelectedIndex(index),
        child: Container(
          height: 45.h,
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
               borderRadius: BorderRadius.circular(8),
                side: BorderSide(
                    color: provider.selectedIndex==index?AppColors.kRed:AppColors.kLightGray,
                  ),
            ),
            color:provider.selectedIndex==index?AppColors.kRed.withOpacity(0.1):null,
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  SvgPicture.asset(image),
                  const Spacer(),
                  Text(text,
                  style:AppStyles.regular14(context, AppColors.kBlack),)
                ],
              ),
            ),
        ),
      ),
    );
  }
}