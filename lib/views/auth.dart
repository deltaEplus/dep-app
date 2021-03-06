import 'package:delta_app/config/themes.dart';
import 'package:delta_app/widgets/app_bar.dart';
import 'package:delta_app/widgets/auth/carousel.dart';
import 'package:delta_app/widgets/auth/sign_in_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:delta_app/controllers/auth_controller.dart';

class AuthPage extends GetView<AuthController> {
  const AuthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: AppTheme.bg,
        appBar: appBar('Sign-In'),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: SizedBox(
                    width: double.infinity,
                    height: 500,
                    child: carousel(controller)),
              ),
              signIn()
            ],
          ),
        ),
      );
}
