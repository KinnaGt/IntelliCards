import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intellicards/screens/signUpScreen/components/background.dart';
import 'package:intellicards/screens/signUpScreen/components/social_icon.dart';

import '../../../generalComponents/already_have_an_account_acheck.dart';
import '../../../generalComponents/rounded_button.dart';
import '../../../generalComponents/rounded_input_field.dart';
import '../../../generalComponents/rounded_password_field.dart';
import '../../loginScreen/login_screen.dart';
import 'or_divider.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 20,),
            Text(
              "SIGNUP",
              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),
            ),
            SizedBox(height: size.height * 0.01),
            SvgPicture.asset(
              "assets/icons/signup.svg",
              height: size.height * 0.35,
            ),
            Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //Expanded(child: Container(),),
              SizedBox(width: 40,),
              Expanded(
                child: RoundedInputField(
                maxLength: 15,
                hintText: "Name",
                onChanged: (value) {},
                ),
              ),
              Expanded(
                child: RoundedInputField(
                hintText: "Last Name",
                maxLength: 15,
                onChanged: (value) {},
                ),
              ),
              SizedBox(width: 40,),
              //Expanded(child: Container(),),
            ],),
            RoundedInputField(
              hintText: "Your Email",
              maxLength: 30,
              onChanged: (value) {},
            ),
            RoundedInputField(
              hintText: "Username",
              maxLength: 15,
              onChanged: (value) {},
            ),
            
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "SIGNUP",
              press: () => {},
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              login: false,
              press: () => _navigate(context)
            ),
            OrDivider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SocalIcon(
                  iconSrc: "assets/icons/facebook.svg",
                  press: () {},
                ),
                SocalIcon(
                  iconSrc: "assets/icons/twitter.svg",
                  press: () {},
                ),
                SocalIcon(
                  iconSrc: "assets/icons/google-plus.svg",
                  press: () {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

void _navigate(context){
  Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
}