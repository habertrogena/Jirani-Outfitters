import 'package:flutter/material.dart';
import 'package:jirani_mobile_app/src/features/signup/view/signup_form.dart';
import 'package:jirani_mobile_app/src/features/signup/view/signup_header_widget.dart';

import '../../../constants/sizes.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(tDefaultSize),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // const Image(
                //   image: AssetImage('assets/images/login.png'),
                // ),
                const SizedBox(
                  height: 40,
                ),
                SignUpHeaderWidget(size: size),
                const SignUpForm()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
