import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:nami/core/resources/app_styles.dart';
import 'package:nami/core/resources/colors.dart';
import 'package:nami/main.dart';

class ChooseLanguage extends StatefulWidget {
  final Function(Locale) onLanguageSelected;

  const ChooseLanguage({Key? key, required this.onLanguageSelected})
      : super(key: key);

  @override
  State<ChooseLanguage> createState() => _ChooseLanguageState();
}

class _ChooseLanguageState extends State<ChooseLanguage> {
  int selectedLanguage = 0;
  late SharedPreferences prefs;

  @override
  void initState() {
    super.initState();
    _loadSelectedLanguage(); 
  }

  Future<void> _loadSelectedLanguage() async {
    prefs = await SharedPreferences.getInstance();
    setState(() {
      selectedLanguage = prefs.getInt('selectedLanguage') ?? 0;
    });
  }

  Future<void> _saveSelectedLanguage(int languageIndex) async {
    await prefs.setInt('selectedLanguage', languageIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RadioListTile(
          title: Text(
            'عربي',
            style: AppStyles.regular14(context, AppColors.kBlack),
          ),
          value: 0,
          groupValue: selectedLanguage,
          onChanged: (value) {
            setState(() {
              selectedLanguage = value!;
              _saveSelectedLanguage(selectedLanguage);
              widget.onLanguageSelected(
                  value == 0 ? supportedLanguages[1] : supportedLanguages[0]);
            });
          },
          fillColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.selected)) {
                return AppColors.kRed;
              }
              return AppColors.kRed; //
            },
          ),
        ),
        RadioListTile(
          title: Text(
            'English',
            style: AppStyles.regular14(context, AppColors.kBlack),
          ),
          value: 1,
          groupValue: selectedLanguage,
          onChanged: (value) {
            setState(() {
              selectedLanguage = value!;
              _saveSelectedLanguage(selectedLanguage);
              widget.onLanguageSelected(
                  value == 0 ? supportedLanguages[1] : supportedLanguages[0]);
            });
          },
          activeColor: AppColors.kRed,
          fillColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.selected)) {
                return AppColors.kRed;
              }
              return AppColors.kRed; //
            },
          ),
        ),
      ],
    );
  }
}
