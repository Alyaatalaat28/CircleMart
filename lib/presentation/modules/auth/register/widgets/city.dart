// ignore_for_file: deprecated_member_use

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:nami/core/extensions/num_extension.dart';
import 'package:nami/core/resources/app_styles.dart';
import 'package:nami/core/resources/assets.dart';
import 'package:nami/core/resources/colors.dart';
import 'package:nami/core/resources/locale_keys.g.dart';
import 'package:nami/injection.dart';
import 'package:provider/provider.dart';
import '../../auth_provider.dart';

AuthProvider authProvider = getIt();

class City extends StatefulWidget {
  const City({super.key});

  @override
  State<City> createState() => _CityState();
}

class _CityState extends State<City> {
  String? selectedValue;
  @override
  Widget build(BuildContext context) {
    return Consumer<AuthProvider>(
      builder: (context, provider, child) => Container(
          height: 61.h,
          decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                  side: const BorderSide(color: AppColors.kLightGray))),
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: DropdownButtonFormField(
                  decoration: const InputDecoration(border: InputBorder.none),
                  hint: Row(children: [
                    SvgPicture.asset(
                      Assets.city,
                    ),
                    Gap(6.w),
                    Text(
                     tr(LocaleKeys.city),
                      style: AppStyles.regular14(context, AppColors.kBlack),
                    ),
                  ]),
                  items: provider.cities
                      .map(
                        (item) => DropdownMenuItem<String>(
                          value: item.title,
                          child: Text(
                            item.title!,
                            style:
                                AppStyles.regular14(context, AppColors.kBlack),
                          ),
                        ),
                      )
                      .toList(),
                  value: selectedValue,
                  onChanged: (value) {
                    setState(() {
                      selectedValue = value;
                      final index = provider.cities
                          .indexWhere((city) => city.title == value);
                      if (index != -1) {
                        provider.cityId = provider.cities[index].id;
                      } else {
                        print('the value is not found in cities');
                      }
                    });
                  }))),
    );
  }
}
