import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:otp_login_app_project/widgets/submit_button.dart';

import '../widgets/text_input_field.dart';

class LoginPage extends HookWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final emailController = useTextEditingController();
    final otpController = useTextEditingController();
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextInputField(
                textEditingController: emailController,
                title: "E-MAIL",
                textInputType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 16),
              TextInputField(
                textEditingController: otpController,
                title: "OTP",
                textInputType: TextInputType.number,
              ),
              const SizedBox(height: 40),
              SubmitButton(
                onTap: () {
                  // final loginRequest = GLoginUserReq((loginUser) => loginUser
                  //   ..vars.email = emailController.value.text
                  //   ..vars.otp = otpController.value.text);
                  // client.request(loginRequest).listen((event) => print(event.data));
                  debugPrint(emailController.value.text);
                  debugPrint(otpController.value.text);
                },
                label: "LOGIN",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
