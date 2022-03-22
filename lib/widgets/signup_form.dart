import 'package:flutter/material.dart';
import 'package:hello_world/widgets/input_decoration.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({
    Key? key,
    required GlobalKey<FormState> formKey,
    required TextEditingController emailTextController,
    required TextEditingController passwordTextController,
    required TextEditingController nameTextController,
  })  : _formKey = formKey,
        _emailTextController = emailTextController,
        _passwordTextController = passwordTextController,
        _nameTextController = nameTextController,
        super(key: key);

  final GlobalKey<FormState> _formKey;
  final TextEditingController _nameTextController;
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
                return value!.isEmpty ? 'Please Enter Your Name' : null;
              },
              controller: _nameTextController,
              decoration: buildInputDecoration(
                  label: "Full Name", hinttext: " John Doe"),
            ),
          ),
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
                return value!.isEmpty ? 'Enter a password' : null;
              },
              controller: _passwordTextController,
              obscureText: true,
              decoration:
                  buildInputDecoration(label: "Create Password", hinttext: "Password"),
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
                if (_formKey.currentState!.validate()) {}
              },
              child: Text("Sign Up"))
        ],
      ),
    );
  }
}
