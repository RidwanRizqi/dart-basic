import 'package:flutter/material.dart';
import 'package:simple_login_app/sign_up.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Colors.brown,
          primarySwatch: Colors.blue,
          hintColor: Colors.blue),
      title: "Login Screen",
      home: LoginPageUI(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class LoginPageUI extends StatefulWidget {
  const LoginPageUI({super.key});

  @override
  _LoginPageUIState createState() => _LoginPageUIState();
}

class _LoginPageUIState extends State<LoginPageUI> {
  final FocusNode _passwordFocusNode = FocusNode();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.fromLTRB(30, 110.0, 30, 20),
            child: Column(
              children: <Widget>[
                CircleAvatar(
                  radius: 60.0,
                  backgroundImage: Image.asset("assets/images/icon.jpg").image,
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Text(
                      "Email",
                      style: TextStyle(
                          fontSize: 15.0, fontWeight: FontWeight.bold),
                    ),
                    TextFormField(
                      onFieldSubmitted: (String value) {
                        FocusScope.of(context).requestFocus(_passwordFocusNode);
                      },
                      autofocus: true,
                      controller: _emailController,
                      keyboardType: TextInputType.emailAddress,
                      textInputAction: TextInputAction.next,
                      decoration:
                          const InputDecoration(labelText: 'Enter your email id'),
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Text(
                      "Password",
                      style: TextStyle(
                          fontSize: 15.0, fontWeight: FontWeight.bold),
                    ),
                    TextFormField(
                        focusNode: _passwordFocusNode,
                        controller: _passwordController,
                        textInputAction: TextInputAction.done,
                        decoration:
                            const InputDecoration(labelText: 'Enter your password'),
                        keyboardType: TextInputType.text,
                        obscureText: true),
                  ],
                ),
                const Padding(padding: EdgeInsets.fromLTRB(0, 40, 0, 0)),
                ButtonTheme(
                  minWidth: double.maxFinite,
                  height: 50.0,
                  child: ElevatedButton(
                      onPressed: showAlert,
                      child: const Text(
                        "Login with Email",
                        style:
                            TextStyle(color: Colors.white, fontSize: 20.0),
                      )),
                ),
                const Padding(padding: EdgeInsets.fromLTRB(0, 20, 0, 0)),
                ButtonTheme(
                  buttonColor: Colors.blueAccent,
                  minWidth: double.maxFinite,
                  height: 50.0,
                  child: ElevatedButton(
                      onPressed: () {},
                      child: const Text(
                        "Login with Facebook",
                        style:
                            TextStyle(color: Colors.white, fontSize: 20.0),
                      )),
                ),
                const Padding(padding: EdgeInsets.fromLTRB(0, 20, 0, 0)),
                ButtonTheme(
                  buttonColor: Colors.blueAccent,
                  minWidth: double.maxFinite,
                  height: 50.0,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignUpScreen()),
                      );
                    },
                    child: const Text(
                      "Register Now",
                      style: TextStyle(color: Colors.white, fontSize: 20.0),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void showAlert() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          // Retrieve the text the user has typed in using our
          // TextEditingController
          title: const Text("Login Screen"),
          content: Text("Email :${_emailController.text}\nPassword : ${_passwordController.text}"),
          actions: <Widget>[
            TextButton(
                child: const Text('Cancel'),
                onPressed: () {
                  Navigator.of(context).pop();
                }),
            TextButton(
                child: const Text('Ok'),
                onPressed: () {
                  _emailController.clear();
                  _passwordController.clear();
                  Navigator.of(context).pop();
                })
          ],
        );
      },
    );
  }
}
