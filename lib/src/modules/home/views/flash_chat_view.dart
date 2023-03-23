import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:com_getx_coba/src/components/buttons/custom_button.dart';
import 'package:com_getx_coba/src/constants/app_colors.dart';
import 'package:com_getx_coba/src/constants/app_text_styles.dart';
import 'package:com_getx_coba/src/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../components/logo/animation_logo.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const AnimationLogo(),
              SizedBox(
                width: 250.0,
                child: DefaultTextStyle(
                  style: AppTextStyles.flashChatStyle,
                  child: AnimatedTextKit(
                    animatedTexts: [
                      TyperAnimatedText('Flash Chat'),
                      TyperAnimatedText('Welcome!'),
                      TyperAnimatedText('Flash Chat'),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          CustomButton(
              onPressed: () async => Get.toNamed(Routes.LOGIN, arguments: true),
              text: 'Login',
              backgroundColor: AppColors.loginBtn),
          const SizedBox(
            height: 13,
          ),
          CustomButton(
              onPressed: () async =>
                  Get.toNamed(Routes.LOGIN, arguments: false),
              text: 'Register',
              backgroundColor: AppColors.registerBtn),
        ],
      ),
    );
  }
}
