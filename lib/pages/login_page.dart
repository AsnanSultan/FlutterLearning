import 'package:flutter/material.dart';
import 'package:flutter_application_with_git/utils/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changedButton = false;
  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        changedButton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changedButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                SizedBox(
                  height: 16,
                ),
                Image.asset(
                  "assets/images/login.png",
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  "Welcome $name",
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 32),
                  child: Column(children: [
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Enter username",
                        labelText: "Username",
                      ),
                      validator: (value) {
                        if (value == "") {
                          return "Username can't be empty";
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
                        hintText: "Enter password",
                        labelText: "Password",
                      ),
                      validator: (value) {
                        if (value == "") {
                          return "Password can't be empty";
                        }
                        return null;
                      },
                    ),
                  ]),
                ),
                SizedBox(
                  height: 50,
                ),
                Material(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(changedButton ? 50 : 10),
                  child: InkWell(
                    onTap: () => moveToHome(context),
                    child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                      width: changedButton ? 70 : 130,
                      height: 50,
                      alignment: Alignment.center,
                      child: changedButton
                          ? Icon(
                              Icons.done,
                              color: Colors.white,
                            )
                          : Text(
                              "Login",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                    ),
                  ),
                )
                /* ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, MyRoutes.homeRoute);
                  },
                  style: TextButton.styleFrom(minimumSize: Size(120, 30)),
                  child: Text("Login"),
                ),*/
              ],
            ),
          ),
        ));
  }
}
