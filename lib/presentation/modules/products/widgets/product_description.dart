import 'package:flutter/material.dart';
import 'package:nami/core/resources/app_styles.dart';
import 'package:nami/core/resources/colors.dart';

class ProductDescription extends StatelessWidget {
  const ProductDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Text('''1. مصدر للفيتامينات والمعادن: الجمبري يحتوي على مجموعة متنوعة من الفيتامينات والمعادن، مثل فيتامين B12 والنياسين والفوسفور والسيلينيوم واليود.
 2. منخفض بالسعرات الحراريةوالدهون: على الرغم من طعمه اللذيذ،إلا أن الجمبري غالبًا ما يكون منخفض السعرات الحرارية والدهون، مما يجعله خيارًا جيدًا للأشخاص الذين يهتمون بمتابعة وزنهم.
 3. غني بالأوميغا-3: الجمبري يحتوي على حمض دهني أوميغا-3، والذي يعتبر مفيدًا لصحة القلب والأوعية الدموية، ويمكن أن يساهم في خفض مستويات الكولسترول الضار.''',
            textDirection: TextDirection.rtl,
            style:AppStyles.regular12(context, AppColors.kGray)),
    );
  }
}