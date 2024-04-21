import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:nami/core/extensions/num_extension.dart';
import 'package:nami/core/resources/assets.dart';
import 'package:nami/core/resources/colors.dart';
import 'package:nami/core/resources/app_styles.dart';
import 'package:nami/core/resources/locale_keys.g.dart';
import 'package:nami/data/dataSource/local/shared_pref.dart';
import 'package:nami/data/model/body/latest_products/datum.dart';
import 'package:nami/presentation/component/dialog/snack_bar.dart';
import 'package:provider/provider.dart';

class ProductPriceAndCart extends StatelessWidget {
  const ProductPriceAndCart({super.key, required this.product});
  final Datam product;
  @override
  Widget build(BuildContext context) {
    return Consumer<SharedPref>(
        builder: (context, provider, child) => Row(children: [
              Text('${product.price!}', style: AppStyles.semiBold16(context)),
              const Gap(5),
              Text(tr(LocaleKeys.pound), style: AppStyles.regular10(context)),
              const Spacer(),
              InkWell(
                  onTap: () {
                    provider.addToCart(product, provider.currentQuentity);
                    ScaffoldMessenger.of(context)
                        .showSnackBar(showSnack(context));
                  },
                  child: SizedBox(
                    width: 32.w,
                    height: 32.h,
                    child: Container(
                      decoration: const ShapeDecoration(
                        color: AppColors.kRed,
                        shape: CircleBorder(),
                      ),
                      child: Center(
                        child: SvgPicture.asset(
                          Assets.addToCart,
                        ),
                      ),
                    ),
                  )),
            ]));
  }
}
