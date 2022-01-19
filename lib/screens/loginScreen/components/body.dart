import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intellicards/screens/loginScreen/components/background.dart';

import '../../../generalComponents/already_have_an_account_acheck.dart';
import '../../../generalComponents/rounded_button.dart';
import '../../../generalComponents/rounded_input_field.dart';
import '../../../generalComponents/rounded_password_field.dart';
import '../../signUpScreen/signup_screen.dart';

class Body extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "LOGIN",
              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),
            ),
            SizedBox(height: size.height * 0.03),
            SvgPicture.asset(
              "assets/icons/login.svg",
              height: size.height * 0.35,
            ),
            SizedBox(height: size.height * 0.03),
            RoundedInputField(
              maxLength: 20,
              hintText: "Your Email",
              /*var email = "tony@starkindustries.com"
              bool emailValid = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(email);*/
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "LOGIN",
              press: () { ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text("Sending Message"),
    ));},
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SignUpScreen();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
