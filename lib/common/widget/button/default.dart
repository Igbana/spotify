import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    super.key,
    required this.onPressed,
    required this.title,
    this.height = 18,
  });

  final VoidCallback onPressed;
  final String title;
  final double height;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(minimumSize: Size.fromHeight(height)),
      child: Text(title),
    );
  }
}
