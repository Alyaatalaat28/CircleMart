import 'package:flutter/material.dart';
import 'package:nami/core/extensions/num_extension.dart';
import 'package:nami/core/resources/assets.dart';
import 'package:nami/core/resources/colors.dart';
import 'package:nami/presentation/component/custom_list_tile.dart';

class InvoiceDetails extends StatelessWidget {
  const InvoiceDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height:315.h ,
      width: double.infinity,
      decoration:ShapeDecoration(
          color:AppColors.kRed.withOpacity(0.08),
          shape:RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
            )),
            child:  const Column(
              children: [
                CustomOrderListTile(
                  trailing: false,
                  image: Assets.branch,
                   title: 'الفرع',
                   subTitle: 'شارع الحرية',
                   ),
                CustomOrderListTile(
                  image: Assets.location,
                   title: 'عنوان التوصيل',
                   subTitle: 'شارع الحرية - الجيزة',
                   trailing: false,
                   ),
                CustomOrderListTile(
                  image: Assets.payment,
                   title: 'طريقة الدفع',
                   subTitle: 'كاش',
                   trailing: false,
                   ),
                CustomOrderListTile(
                  image: Assets.note,
                   title: 'ملاحظات',
                   subTitle: 'هات الجمبري طازة',
                   trailing: false,
                   ),
              ],
            ),
    );
  }
}