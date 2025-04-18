import 'package:flutter/material.dart';

class CustomOutlinedButtonWidget extends StatelessWidget {
  final String IconPath;
  final String textButton;
  const CustomOutlinedButtonWidget({super.key, required this.IconPath, required this.textButton});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      style: ElevatedButton.styleFrom(
        minimumSize: Size(double.infinity, 70),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      ),
      icon: Image.asset("assets/icons/$IconPath", width: 40),
      onPressed: () {},
      label: Text(textButton),
    );
  }
}
