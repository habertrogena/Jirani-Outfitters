import 'package:flutter/material.dart';
import 'package:jirani_mobile_app/src/features/signup/controller/signup_controller.dart';

import '../../../constants/color.dart';
import '../../../constants/sizes.dart';
import '../../../constants/strings.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    // connect the app with the controller.
    SignUpController signUpController = SignUpController();
     final formKey = GlobalKey<FormState>();

    return Form(
      // key: controller.loginFormKey,
      key: formKey,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: tFormHeight - 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              controller: signUpController.fullName,
              onSaved: (value) {
                //  controller.email = value!;
              },
              validator: (value) {
                return null;

                // return controller.validateEmail(value!);
              },
              keyboardType: TextInputType.name,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.person_2),
                labelText: 'Full Names',
                hintText: 'john Doe',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: tFormHeight,
            ),
            TextFormField(
              controller: signUpController.email,
              onSaved: (value) {
                //  controller.email = value!;
              },
              validator: (value) {
                return null;

                // return controller.validateEmail(value!);
              },
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.mail),
                labelText: tEmail,
                hintText: tEmailHint,
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: tFormHeight,
            ),
            TextFormField(
              keyboardType: TextInputType.visiblePassword,
              controller: signUpController.password,
              onSaved: (value) {
                // controller.password = value!;
              },
              validator: (value) {
                return null;

                // return controller.validatePassword(value!);
              },
              // obscureText: passenabled,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.vpn_key),
                labelText: tPassword,
                hintText: tPassword,
                border: OutlineInputBorder(),
                // suffixIcon: IconButton(
                //   onPressed: () {
                //     setState(() => {passenabled = !passenabled});
                //   },
                //   icon: Icon(
                //       passenabled ? Icons.visibility : Icons.visibility_off),
                // ),
              ),
            ),
            const SizedBox(
              height: tFormHeight - 20,
            ),
            //--SiGNUP WITH GOOGLE  BUTTON
            const SizedBox(
              height: 20,
            ),
            // ElevatedButton(
            //   style: ElevatedButton.styleFrom(
            //     backgroundColor: tPrimaryColor,
            //     minimumSize: const Size.fromHeight(50),
            //   ),
            //   onPressed: () {
            //     // googleSignUp();
            //   },
            //   child: const Text(
            //     'Sign Up With Google Account',
            //   ),
            // ),

            //--SiGNUP  BUTTON
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: tPrimaryColor,
                minimumSize: const Size.fromHeight(50),
              ),
              onPressed: () {
                signUpController.firebaseAuth.signUp(
                    signUpController.email.text.trim(),
                    signUpController.password.text.trim());
              },
              child: const Text(
                'Sign Up',
              ),
            ),

            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
