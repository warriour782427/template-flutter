import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hello_world/widgets/input_decoration.dart';


class LoginForm extends StatelessWidget {
  const LoginForm({
    Key? key,
    required GlobalKey<FormState> formKey,
    required TextEditingController emailTextController,
    required TextEditingController passwordTextController,
  })  : _formKey = formKey,
        _emailTextController = emailTextController,
        _passwordTextController = passwordTextController,
        super(key: key);

  final GlobalKey<FormState> _formKey;
  final TextEditingController _emailTextController;
  final TextEditingController _passwordTextController;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextFormField(
              validator: (value) {
                return value!.isEmpty ? 'Please add an email' : null;
              },
              controller: _emailTextController,
              decoration: buildInputDecoration(
                  label: "Email", hinttext: "yourname@mail.domain"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextFormField(
              validator: (value) {
                return value!.isEmpty ? 'Enter password' : null;
              },
              controller: _passwordTextController,
              obscureText: true,
              decoration:
                  buildInputDecoration(label: "Password", hinttext: "Password"),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextButton(
              style: TextButton.styleFrom(
                  primary: Colors.white,
                  padding: EdgeInsets.all(15),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4)),
                  backgroundColor: Colors.deepOrangeAccent,
                  textStyle: TextStyle(fontSize: 18)),
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  FirebaseAuth.instance.signInWithEmailAndPassword(
                          email: _emailTextController.text,
                          password: _passwordTextController.text)
                      .then((value) => print(value.user!.uid));
                }
              },
              child: Text("Sign In"))
        ],
      ),
    );
  }
}
