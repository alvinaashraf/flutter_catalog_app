import 'package:catalog/utils/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Form(
          key: _formkey,
          child: Column(
            children: [
              Image.asset(
                "assets/images/login.png",
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Wellcome $name",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    TextFormField(
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      },
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'username cannot be empty';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                          hintText: "enter user name", labelText: "User Name"),
                    ),
                    TextFormField(
                      obscureText: true,
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'username cannot be empty';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                          hintText: "enter password", labelText: "Password"),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, MyRoutes.HomeRoute);
                      },
                      child: Text("Login"),
                      style: ButtonStyle(
                          foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                          minimumSize:
                              MaterialStateProperty.all(Size(130, 50))),
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
