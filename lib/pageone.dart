import 'package:flutter/material.dart';

class Pageone extends StatelessWidget {
  Pageone({Key? key}) : super(key: key);
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Form(
          key: _formkey,
          autovalidateMode: AutovalidateMode.always,
          child: Column(
            children: [
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintText: "Enter Your Email",
                ),
                validator: (val) {
                  if (val!.isEmpty) {
                    return "Email can't be empty";
                  } else if (val.length > 25) {
                    return "can't be more than 25";
                  } else {
                    return null;
                  }
                },
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: "Enter Your Age",
                ),
                validator: (val) {
                  if (val!.isEmpty) {
                    return "Age can't be empty";
                  } else if (val.length > 2) {
                    return "can't be more than 2";
                  } else {
                    return null;
                  }
                },
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: "Enter Your Phone Number",
                ),
                validator: (val) {
                  if (val!.isEmpty) {
                    return "Phone number can't be empty";
                  } else if (val.length > 11) {
                    return "can't be more than 11";
                  } else {
                    return null;
                  }
                },
              ),
              ElevatedButton(
                onPressed: () {
                  if (_formkey.currentState!.validate()) {
                    Navigator.pushNamed(context, "/Pagetwo");
                  }
                },
                child: Text("Sing in"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
