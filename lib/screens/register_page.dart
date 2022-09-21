import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../widgets/submit_button.dart';
import '../widgets/text_input_field.dart';

class RegisterPage extends HookWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController nameController = useTextEditingController();
    final TextEditingController emailController = useTextEditingController();
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextInputField(
                textEditingController: nameController,
                title: "NAME",
                textInputType: TextInputType.text,
              ),
              const SizedBox(height: 16),
              TextInputField(
                textEditingController: emailController,
                title: "E-MAIL",
                textInputType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 40),
              SubmitButton(
                onTap: () {
                  debugPrint(nameController.value.text);
                  debugPrint(emailController.value.text);
                },
                label: "REGISTER",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
