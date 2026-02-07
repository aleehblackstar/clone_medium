import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medium_clone/widgets/social_button.widget.dart';

class MediumHomePage extends StatelessWidget {
  const MediumHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset("assets/images/medium.png", width: 50, height: 50),

              SizedBox(height: 70),

              Text(
                "Join Medium.",
                textAlign: TextAlign.center,
                style: GoogleFonts.dmSerifDisplay(fontSize: 45),
              ),
              SizedBox(height: 40),

              SocialButton(
                pathImage: "assets/images/google.png",
                text: "Sign up with Google",
                buttonKey: const Key("google_button"),
                style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.black,
                  side: const BorderSide(color: Colors.black)
                ),
              ),

              SizedBox(height: 18),

              SocialButton(pathImage: "assets/images/email.png",
              text: "Sign up with email",
              buttonKey: const Key("signupEmail"),
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.black,
                side: const BorderSide(color: Colors.black)
              ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
