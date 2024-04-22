import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:nami/core/extensions/num_extension.dart';
import 'package:nami/core/resources/app_styles.dart';
import 'package:nami/core/resources/assets.dart';
import 'package:nami/core/utils/constants.dart';
import 'package:nami/presentation/component/buttons/custom_text_button.dart';
import 'package:nami/presentation/modules/invoice/widgets/payment_method_list.dart';
import 'package:nami/presentation/modules/orders/orders_provider.dart';
import 'package:provider/provider.dart';

class PaymentsBottomSheet extends StatelessWidget {
  const PaymentsBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<OrdersProvider>(
      builder: (context, provider, child) => SizedBox(
        height: 388.h,
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(children: [
            Row(children: [
              Text('طريقة الدفع', style: AppStyles.semiBold18(context)),
              const Spacer(),
              InkWell(
                  onTap: () => Navigator.pop(context),
                  child: SvgPicture.asset(Assets.x)),
            ]),
            Gap(32.h),
            const PaymentMethodList(),
            Gap(32.h),
            CustomTextButton(
                width: double.infinity,
                height: 53,
                text: 'تأكيد',
                radius: 16,
                onPressed: () {
                  provider.paymentController.text =
                      paymentMethods[provider.selectedIndex].text;
                  Navigator.pop(context);
                }),
          ]),
        ),
      ),
    );
  }
}
