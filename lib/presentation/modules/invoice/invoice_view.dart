import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:nami/core/extensions/num_extension.dart';
import 'package:nami/presentation/component/products_app_bar.dart';
import 'package:nami/presentation/modules/invoice/widgets/dialog.dart';
import 'package:nami/presentation/modules/invoice/widgets/invoice_details.dart';
import 'widgets/invoice_products.dart';

class InvoiceView extends StatelessWidget {
  const InvoiceView({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child:Scaffold(
        body:Padding(
          padding: const EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children:[
                 const ProductsAppBar(
                    text:'الفاتورة'
                  ),
                 Gap(30.h),
                 const InvoiceDetails(),
                 Gap(12.h),
                 const InvoiceProducts(),
                 Gap(99.h),
                 const DoneDialog(),
                 
                
              ]
            ),
          ),
        )
      )
    );
  }
}