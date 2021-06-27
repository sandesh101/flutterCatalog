import 'package:flutter/material.dart';
import 'package:flutter_catalog/utils/routes.dart';
import '../utils/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButtom = false;
  final _formKey = GlobalKey<FormState>();

  // get validator => null;

  moveToHome(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        changeButtom = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homePage);
      setState(() {
        changeButtom = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        child: SingleChildScrollView(
      child: Form(
        key: _formKey,
        child: Column(children: [
          Image.asset("assets/images/login.png", fit: BoxFit.scaleDown),
          SizedBox(height: 20),
          Text(
            'Welcome $name',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
          SizedBox(height: 20),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
            child: Column(children: [
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Enter Username",
                  labelText: "Username",
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Enter Something";
                  }
                  return null;
                },
                onChanged: (value) {
                  name = value;
                  setState(() {});
                },
              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                    hintText: "Enter Password", labelText: "Password"),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Enter Something";
                  } else if (value.length < 8) {
                    return "Password must have atleast 8 character";
                  }
                  return null;
                },
              ),
              SizedBox(height: 40),
              Material(
                color: Colors.pink,
                borderRadius: BorderRadius.circular(changeButtom ? 50 : 10),
                child: InkWell(
                  onTap: () => moveToHome(context),
                  child: AnimatedContainer(
                    duration: Duration(seconds: 1),
                    height: 50,
                    width: changeButtom ? 50 : 150,
                    alignment: Alignment.center,
                    child: changeButtom
                        ? Icon(
                            Icons.done,
                            color: Colors.white,
                          )
                        : Text(
                            "Login",
                            style: TextStyle(fontSize: 22, color: Colors.white),
                          ),
                  ),
                ),
              ),
            ]),
          )
        ]),
      ),
    ));
  }
}
