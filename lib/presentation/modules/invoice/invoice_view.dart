import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:nami/core/extensions/num_extension.dart';
import 'package:nami/core/resources/locale_keys.g.dart';
import 'package:nami/presentation/component/appbars/products_app_bar.dart';
import 'package:nami/presentation/modules/invoice/widgets/dialog.dart';
import 'package:nami/presentation/modules/invoice/widgets/invoice_details.dart';
import 'widgets/invoice_products.dart';

class InvoiceView extends StatelessWidget {
  const InvoiceView({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
                surfaceTintColor: Colors.transparent,
                automaticallyImplyLeading: false,
                actions:  [
                  ProductsAppBar(
                    text: tr(LocaleKeys.theBill))
                    ,
                ]),
            body: Padding(
              padding: const EdgeInsets.all(6.5),
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                  const InvoiceDetails(),
                  Gap(12.h),
                  const InvoiceProducts(),
                  Gap(90.h),
                  const DoneDialog(),
                ]),
              ),
            )));
  }
}
