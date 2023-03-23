import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../components/buttons/custom_button.dart';
import '../../../components/logo/animation_logo.dart';
import '../../../components/text_form_field/text_form_field.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView(this.isLogin, {Key? key}) : super(key: key);
  final bool isLogin;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Form(
          key: controller.formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const AnimationLogo(size: 180),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomTextField(
                    controller: controller.emailCtl,
                    labelText: 'Email',
                    hintText: 'Enter your email',
                  ),
                  const SizedBox(height: 12),
                  CustomTextField(
                    controller: controller.passwordCtl,
                    labelText: 'Password',
                    hintText: 'Enter your password',
                  ),
                ],
              ),
              CustomButton(
                onPressed: () {},
                text: isLogin ? 'Login' : 'Register',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
