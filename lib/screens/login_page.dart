import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hello_world/widgets/login_form.dart';
import 'package:hello_world/widgets/signup_form.dart';
import 'package:hexcolor/hexcolor.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isCreateAccountClicked = false;
  final _formKey = GlobalKey<FormState>();

  TextEditingController _emailTextController = TextEditingController();
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _nameTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Container(color: HexColor('#b9c2d1')),
            ),
            Text(
              isCreateAccountClicked ? "Sign Up" : "Sign In",
              style: Theme.of(context).textTheme.headline3,
            ),
            SizedBox(
              height: 10,
            ),
            Spacer(),
            Column(
              children: [
                SizedBox(
                  width: 300,
                  child: isCreateAccountClicked != true
                      ? LoginForm(
                          formKey: _formKey,
                          emailTextController: _emailTextController,
                          passwordTextController: _passwordTextController)
                      : SignupForm(
                          formKey: _formKey,
                          emailTextController: _emailTextController,
                          passwordTextController: _passwordTextController,
                          nameTextController: _nameTextController),
                ),
                SizedBox(
                  height: 20,
                ),
                TextButton.icon(
                    icon: Icon(Icons.portrait_rounded),
                    style: TextButton.styleFrom(
                        primary: HexColor('#fd5b28'),
                        textStyle: TextStyle(
                          fontSize: 18,
                          fontStyle: FontStyle.italic,
                        )),
                    onPressed: () {
                      setState(() {
                        if (!isCreateAccountClicked) {
                          isCreateAccountClicked = true;
                        } else
                          isCreateAccountClicked = false;
                      });
                    },
                    label: Text(isCreateAccountClicked
                        ? "Already Have an Account"
                        : 'Create Account')),
              ],
            ),
            Spacer(),
            Expanded(
              flex: 2,
              child: Container(color: HexColor('#b9c2d1')),
            ),
          ],
        ),
      ),
    );
  }
}
