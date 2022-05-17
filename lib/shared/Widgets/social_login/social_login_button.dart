import 'package:flutter/material.dart';
import 'package:pay_flow/shared/themes/app_colors.dart';
import 'package:pay_flow/shared/themes/app_images.dart';

import '../../themes/app_text_styles.dart';

class SocialLoginButton extends StatelessWidget {
  final VoidCallback onTap;

  const SocialLoginButton({Key? key, required this.onTap}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      child: Container(
        decoration: BoxDecoration(
            color: AppColors.shape,
            borderRadius: BorderRadius.circular(50),
            border: Border.fromBorderSide(BorderSide(color: AppColors.stroke))),
        height: 56,
        child: Row(
          children: [
            Expanded(child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(AppImages.google),
                SizedBox(
                  width: 16,
                ),
                Container(height: 56, width: 1, color: AppColors.stroke,)
              ],
            ), flex: 1),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Entrar com google", style: TextStyles.buttonGray),
                ],
              ),
              flex: 4
            ),
          ],
        ),
      ),
    );
  }
}
