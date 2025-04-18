import 'package:e_commerce_small_app/widgets/custom_button_widget.dart';
import 'package:e_commerce_small_app/widgets/custom_outlined_button_widget.dart';
import 'package:e_commerce_small_app/widgets/custom_textfield_widget.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Welcome Back",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5),
            Text(
              "Let's Sign In",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 30),
            CustomTextfieldWidget(
              hintText: 'Full name',
              prefixIcon: Icons.person,
            ),
            SizedBox(height: 10),
            CustomTextfieldWidget(hintText: 'Email', prefixIcon: Icons.email),
            SizedBox(height: 10),
            CustomTextfieldWidget(
              hintText: 'Password',
              prefixIcon: Icons.lock,
              suffixIcon: Icons.visibility_off,
            ),
            SizedBox(height: 10),
            CustomTextfieldWidget(
              hintText: 'Confirm Password',
              prefixIcon: Icons.lock,
              suffixIcon: Icons.visibility_off,
            ),
            SizedBox(height: 45),
            CustomButtonWidget(textButton: "Sign In", onPressed: () {}),
             SizedBox(height: 45),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 5,
              children: [
                Text("Don't have an account?"),
                Text("Sign In ", style: TextStyle(color: Color(0xffE96E6E), fontWeight: FontWeight.w600),)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
