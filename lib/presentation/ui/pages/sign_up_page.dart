import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_target/constants.dart';
import 'package:flutter_target/data/services/user_service.dart';
import 'package:flutter_target/domain/cubit/sign_up/sign_up_cubit.dart';
import 'package:flutter_target/presentation/ui/pages/sign_in_page.dart';
import 'package:flutter_target/presentation/ui/widgets/text_form_custom.dart';

class SignUpPage extends StatelessWidget {
  static const String id = 'sign_up';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignUpCubit(UserService()),
      child: Scaffold(
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
                  child: BlocBuilder<SignUpCubit, SignUpState>(
                    builder: (context, state) {
                      return Column(
                        children: [
                          TextFormCustom(
                            labelText: kName,
                            onTextChanged:
                                context.read<SignUpCubit>().usernameChanged,
                          ),
                          TextFormCustom(
                            labelText: kEmail,
                            onTextChanged:
                                context.read<SignUpCubit>().emailChanged,
                          ),
                          TextFormCustom(
                            labelText: kGender,
                            onTextChanged:
                                context.read<SignUpCubit>().genderChanged,
                          ),
                          TextFormCustom(
                            labelText: kPassword,
                            onTextChanged:
                                context.read<SignUpCubit>().passwordChanged,
                          ),
                          TextFormCustom(
                            labelText: kConfirmPassword,
                            onTextChanged: context
                                .read<SignUpCubit>()
                                .confirmPasswordChanged,
                          ),
                          SizedBox(height: 10.0),
                          BlocListener<SignUpCubit, SignUpState>(
                            listener: (context, state) {
                              // TODO: implement listener
                            },
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                minimumSize: Size(150.0, 50.0),
                              ),
                              onPressed: () {
                                context.read<SignUpCubit>().signUp();
                              },
                              child: Text(
                                kSignUp.toUpperCase(),
                                style: TextStyle(color: Colors.white),
                              ),
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
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
