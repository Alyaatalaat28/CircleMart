import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:nami/core/extensions/num_extension.dart';
import 'package:nami/core/resources/app_styles.dart';
import 'package:nami/core/resources/assets.dart';
import 'package:nami/core/resources/locale_keys.g.dart';
import 'package:nami/presentation/component/buttons/custom_text_button.dart';
import 'package:nami/presentation/modules/setting/widgets/choose_language.dart';

// ignore: must_be_immutable
class LanguageBottomSheet extends StatelessWidget {
  LanguageBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SizedBox(
        height: 242,
        child: Column(
          children: [
            Row(
              children: [
                InkWell(
                  onTap: () => Navigator.pop(context),
                  child: SvgPicture.asset(Assets.x),
                ),
                const Spacer(),
                Text( tr(LocaleKeys.language), 
                style: AppStyles.semiBold18(context)),
              ],
            ),
            ChooseLanguage(onLanguageSelected: _updateSelectedLanguage),
            Gap(16.h),
            CustomTextButton(
              width: double.infinity,
              height: 60,
              text:  tr(LocaleKeys.confirm),
              radius: 16,
              onPressed: () {
                _changeLanguage(context);
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }

  Locale? _selectedLocale;

  void _updateSelectedLanguage(Locale locale) {
    _selectedLocale = locale;
  }

  void _changeLanguage(BuildContext context) {
    if (_selectedLocale != null) {
      final easyLocalization = EasyLocalization.of(context);
      if (easyLocalization != null) {
        easyLocalization.setLocale(_selectedLocale!);
        print('Language changed to: ${_selectedLocale!.languageCode}');
      }
    } else {
      print('_selectedLocale is null');
    }
  }
}





