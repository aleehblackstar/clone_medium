import 'package:flutter/gestures.dart';
import 'package:medium_clone/widgets/custom_button.widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medium_clone/widgets/social_button.widget.dart';

class MediumHomePage extends StatelessWidget {
  const MediumHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [

              Expanded(flex: 2, 
              child: SizedBox()),

              Image.asset(
                "assets/images/medium.png",
                key: const ValueKey("imageMedium"),
                width: 50,
                height: 50,
              ),

              SizedBox(height: 80),

              Text(
                "Join Medium.",
                textAlign: TextAlign.center,
                style: GoogleFonts.dmSerifDisplay(fontSize: 45),
              ),
              SizedBox(height: 40),

              SocialButton(
                pathImage: "assets/images/google.png",
                text: "Sign up with Google",
                buttonKey: const Key("signupGoogle"),
                style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.black,
                  side: const BorderSide(color: Colors.black),
                ),
              ),

              SizedBox(height: 18),

              SocialButton(
                pathImage: "assets/images/email.png",
                text: "Sign up with email",
                buttonKey: const Key("signupEmail"),
                style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.black,
                  side: const BorderSide(color: Colors.black),
                ),
              ),

              SizedBox(height: 30),

              Row(
                children: [
                  Expanded(child: Divider(thickness: 2, color: Colors.grey)),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    child: Text(
                      "Or, sign up with",
                      style: TextStyle(color: Colors.black87),
                    ),
                  ),

                  Expanded(child: Divider(thickness: 2, color: Colors.grey)),
                ],
              ),

              SizedBox(height: 30),

              Center(
                child: CircleIconButton(
                  imagePath: "assets/images/facebook.png",
                  onTap: () {
                    debugPrint("Facebook clicked");
                  },
                ),
              ),

              SizedBox(
                height: 18,
              ),

              Center(
                child: RichText(
                  text: TextSpan(
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.black
                    ),
                    children: [
                      TextSpan(
                        text: "Already have an account? "
                      ),
                      TextSpan(
                        text: "Sign in",
                        style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.bold
                        ),
                        recognizer: TapGestureRecognizer()
                        ..onTap = () {
                            debugPrint("Navigate to login");
                          },
                      ),
                    ],
                  ),),
              ),

              SizedBox(
                height: 28,
              ),

              SizedBox(height: 50),

Center(
  child: Padding(
    padding: const EdgeInsets.symmetric(horizontal: 12),
    child: RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        style: TextStyle(
          fontSize: 13,
          color: Colors.black87,
        ),
        children: [
          const TextSpan(
            text: "By signing up, you agree to our ",
          ),
          TextSpan(
            text: "Terms of Service",
            style: const TextStyle(
              color: Colors.green,
              fontWeight: FontWeight.w600,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                debugPrint("Terms clicked");
              },
          ),
          const TextSpan(
            text: " and ",
          ),
          TextSpan(
            text: "Privacy Policy",
            style: const TextStyle(
              color: Colors.green,
              fontWeight: FontWeight.w600,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                debugPrint("Privacy clicked");
              },
          ),
          const TextSpan(text: "."),
          const TextSpan(
            text: " applies to you.",
          ),
        ],
      ),
    ),
  ),
),

Expanded(flex: 1, child: SizedBox()),
            ],
          ),
        ),
      ),
    );
  }
}
