import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  final String text;
  final Image image;
  const CustomButton({
    super.key,
    required this.text,
    required this.image,
  });

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  String? check;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Row(
        children: [
          Image.asset("assets/images/pizza 1.png"),
          Text(
            widget.text,
          ),
        ],
      ),
    );
  }
}
