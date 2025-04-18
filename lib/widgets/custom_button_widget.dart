import 'package:flutter/material.dart';

class CustomButtonWidget extends StatelessWidget {
  final String textButton;
final void Function()? onPressed;

  const CustomButtonWidget({super.key, required this.textButton, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        backgroundColor: Color(0xffE55B5B),
        minimumSize: Size(double.infinity, 70),
      ),
      onPressed: onPressed,
      child: Text(
        textButton,
        style: TextStyle(color: Colors.white, fontSize: 24),
      ),
    );
  }
}
