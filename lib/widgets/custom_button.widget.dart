import 'package:flutter/material.dart';

class CircleIconButton extends StatelessWidget {
  final String imagePath;
  final VoidCallback? onTap;
  const CircleIconButton({super.key, required this.imagePath, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(50),
      onTap: onTap,
      child: Container(
        width: 70,
        height: 70,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: Colors.grey, width: 1.2),
        ),
        child: Center(
          child: Image.asset(
            imagePath,
        width: 30,
        height: 30,
         ),
       ),
      ),
    );
  }
}
