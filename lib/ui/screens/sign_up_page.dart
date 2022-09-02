import 'package:flutter/material.dart';
import 'package:flutter_target/constants.dart';
import 'package:flutter_target/ui/screens/sign_in_page.dart';
import 'package:flutter_target/ui/widgets/text_form_custom.dart';

class SignUpPage extends StatelessWidget {
  static const String id = 'sign_up';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        physics: ClampingScrollPhysics(),
        child: Form(
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Image.asset(
                kCircleLoginImage,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 100.0),
                child: Text(
                  kAppName,
                  style: Theme.of(context).textTheme.titleLarge,
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 180),
                padding: EdgeInsets.symmetric(horizontal: 50.0),
                child: Column(
                  children: [
                    TextFormCustom(kName),
                    TextFormCustom(kEmail),
                    TextFormCustom(kPassword),
                    TextFormCustom(kConfirmPassword),
                    TextFormCustom(kGender),
                    SizedBox(height: 10.0),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(150.0, 50.0),
                      ),
                      onPressed: () {},
                      child: Text(
                        kSignUp.toUpperCase(),
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Divider(
                      indent: 60.0,
                      endIndent: 60.0,
                      thickness: 0.5,
                      color: Colors.black,
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, SignInPage.id);
                      },
                      child: Text(
                        kSignIn.toUpperCase(),
                        style: TextStyle(color: Colors.black),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
