import 'package:flutter/material.dart';
import 'package:pay_flow/shared/Widgets/social_login/social_login_button.dart';
import 'package:pay_flow/shared/themes/app_colors.dart';
import 'package:pay_flow/shared/themes/app_images.dart';
import 'package:pay_flow/shared/themes/app_text_styles.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({ Key? key }) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: AppColors.background,
      body: Container(
        width: size.width,
        height: size.height,
        child: Stack(
          children: [
            Container(
              height: size.height * 0.36,
              width: size.width,
              color: AppColors.primary,
            ),
            Positioned(
              top: 40,
              left: 0,
              right: 0,
              child: 
                Image.asset(AppImages.person, width: 208, height: 373)
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: Theme.of(context).platform == TargetPlatform.iOS ? size.height * 0.20 : size.height * 0.03,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(AppImages.logomini),
                  Padding(
                    padding: const EdgeInsets.only(left: 70, right: 70),
                    child: Text("Organize seus boletos em um só lugar",
                    textAlign: TextAlign.center,
                    style: TextStyles.titleHome),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 40, right: 40, top: 30),
                    child: SocialLoginButton(onTap: () {
                      print('clicou');
                    },),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}