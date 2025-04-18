import 'package:e_commerce_small_app/login_page.dart';
import 'package:e_commerce_small_app/sign_in_page.dart';
import 'package:e_commerce_small_app/widgets/custom_button_widget.dart';
import 'package:flutter/material.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Image.asset("assets/images/Good-team-pana.png"),
            Text(
              textAlign: TextAlign.center,
              "Enterprise Team \nManagerment",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              textAlign: TextAlign.center,
              "With an extentsive menu prepared by talented chefs, Fresh quanitity Food",
              style: TextStyle(color: Color(0xffAEAEAE), fontSize: 17),
            ),
            SizedBox(height: 40),
            CustomButtonWidget(textButton: "Sign up", onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage(),));
            }),
            SizedBox(height: 10),
            OutlinedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 70),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => SignInPage(),));
              },
              child: Text(
                "Already have an account",
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
