import 'package:e_commerce_small_app/home_page.dart';
import 'package:e_commerce_small_app/main_page.dart';
import 'package:e_commerce_small_app/widgets/custom_button_widget.dart';
import 'package:e_commerce_small_app/widgets/custom_outlined_button_widget.dart';
import 'package:e_commerce_small_app/widgets/custom_textfield_widget.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

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
            CustomTextfieldWidget(hintText: 'Email', prefixIcon: Icons.email),
            SizedBox(height: 10),
            CustomTextfieldWidget(
              hintText: 'Password',
              prefixIcon: Icons.lock,
              suffixIcon: Icons.visibility_off,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                "Forgot Password",
                style: TextStyle(color: Color(0xffE96E6E)),
              ),
            ),
            SizedBox(height: 20),
            CustomButtonWidget(
              textButton: "Sign In",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MainPage()),
                );
              },
            ),
            SizedBox(height: 40),
            Row(
              spacing: 10,
              children: [
                Expanded(
                  child: Divider(thickness: 2, color: Color(0xffCECECE)),
                ),

                Text("Or Continue with"),
                Expanded(
                  child: Divider(thickness: 2, color: Color(0xffCECECE)),
                ),
              ],
            ),
            SizedBox(height: 40),
            CustomOutlinedButtonWidget(
              IconPath: "google.png",
              textButton: "Continue with Google",
            ),
            SizedBox(height: 10),
            CustomOutlinedButtonWidget(
              IconPath: "Facebook.png",
              textButton: "Continue with Facebook",
            ),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 5,
              children: [
                Text("Don't have an account?"),
                Text(
                  "Sign In ",
                  style: TextStyle(
                    color: Color(0xffE96E6E),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
