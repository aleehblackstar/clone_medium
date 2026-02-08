import 'package:flutter/material.dart';

class SocialButton extends StatelessWidget {
  final String pathImage;
  final String text;
  final Key buttonKey;
  final ButtonStyle style;
  const SocialButton({super.key, required this.pathImage, required this.text, this.buttonKey = const Key("social_button"), required this.style});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 52,
      child: OutlinedButton(
        key: buttonKey,
        style: style,
        onPressed: () {},
        child: Row(
          children: [
            Image.asset(pathImage, width: 22),

            const SizedBox(width: 16),

            Expanded(
              child: Center(
                child: Text(
                  text,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),

          const SizedBox(width: 38),

          ],
        ),
      ),
    );
  }
}