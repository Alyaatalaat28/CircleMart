 import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:gif/gif.dart';
import 'package:nami/core/extensions/num_extension.dart';
import 'package:nami/core/resources/app_styles.dart';
import 'package:nami/core/resources/assets.dart';
import 'package:nami/core/resources/colors.dart';
import 'package:nami/core/routing/app_route.dart';
import 'package:nami/data/dataSource/local/shared_pref.dart';
import 'package:nami/presentation/modules/orders/orders_view.dart';
import 'package:provider/provider.dart';
import '../../../component/buttons/custom_text_button.dart';

class DoneDialog extends StatefulWidget {
  const DoneDialog({super.key});

  @override
  State<DoneDialog> createState() => _DoneDialogState();
}

class _DoneDialogState extends State<DoneDialog> with  SingleTickerProviderStateMixin {
  late GifController controller;
    @override
  void initState() {
    super.initState();
    controller = GifController(vsync: this);
  }
  @override
  void dispose(){
    controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return   Consumer<SharedPref>(
      builder:(context,provider,child)=> CustomTextButton(
                    text: 'ارسال الطلب',
                    width: double.infinity,
                    height:50,
                    radius: 12,
                    onPressed:(){
                      _showContentDialog();
                       provider.clearCart();
                      _navigateToOrdersScreen();
                      }   
                   ),
    );
  }

 void _navigateToOrdersScreen() {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context).pop();
      pushAndRemoveUntil(
        const OrdersView(isFromHome: true,),
      );
    });}

 void _showContentDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: AppColors.kWhite,
          contentPadding: EdgeInsets.zero,
          content: Container(
            decoration: ShapeDecoration(
               color:AppColors.kWhite,
              shape:RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisSize:MainAxisSize.min,
            children: [
              Gif(
              image: const AssetImage(Assets.g1),
              controller: controller,
              autostart: Autostart.once,
                ),
                Gap(24.h),
                  Text('تم ارسال الطلب بنجاح',
                   textAlign:TextAlign.center ,
                  style:AppStyles.regular16(context, AppColors.kGray)),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
  }