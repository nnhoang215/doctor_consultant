import 'package:doctor_app/screens/welcome/auth/sign_up_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants.dart';
import 'auth/components/sign_in_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          SvgPicture.asset("assets/icons/splash_bg.svg"),
        SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Column(
                children: [
                  Spacer(),
                  SvgPicture.asset("assets/icons/gerda_logo.svg"),
                  Spacer(),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignUpScreen())
                      ), 
                      style: TextButton.styleFrom(
                        backgroundColor: Color(0xFF6CD8D1),
                        padding: EdgeInsets.all(defaultPadding)
                      ),
                      child: Text("Sign Up")),
                  ),
                  Padding(
                    padding: 
                      const EdgeInsets.symmetric(vertical: defaultPadding),
                    child: SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignInScreen())
                        ),
                        style: TextButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            side: BorderSide(color: Color(0xFF6CD8D1))
                          ),
                          elevation: 0,
                          backgroundColor: Colors.transparent),
                        child: Text("Sign In")),
                    ),
                  ),
                  SizedBox(height: defaultPadding),
                ],
              ),
            ),
          )
        ],
      )
    );
  }
}
