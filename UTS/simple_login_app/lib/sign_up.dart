import 'package:flutter/material.dart';
import 'package:simple_login_app/login_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Colors.grey,
          primarySwatch: Colors.blue,
          hintColor: Colors.blue),
      title: "Sign Up Screen",
      home: SignUpUI(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class SignUpUI extends StatefulWidget {
  const SignUpUI({super.key});

  @override
  _SignUpUIState createState() => _SignUpUIState();
}

class _SignUpUIState extends State<SignUpUI> {
  @override
  late BuildContext context;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final _fnameController = TextEditingController();
  final _lnameController = TextEditingController();

  final _mobileController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _conPasswordController = TextEditingController();
  final _addressController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    this.context = context;

    return Scaffold(
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.fromLTRB(25, 60.0, 25, 20),
            child: Column(
              children: <Widget>[
                CircleAvatar(
                  backgroundImage: Image.asset("assets/images/icon.jpg").image,
                  radius: 55.0,
                ),
                const Padding(padding: EdgeInsets.fromLTRB(0, 20, 0, 0)),
                Form(
                  key: _formKey,
                  autovalidateMode: AutovalidateMode.always,
                  child: FormUI(),
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
          title: const Text("Sign Up"),
          content: Text(" First Name :${_fnameController.text}\n Last Name : ${_lnameController.text}\n Mobile Number : ${_mobileController.text}\n Email : ${_emailController.text}\n Password : ${_passwordController.text}\n Address : ${_addressController.text}"),
          actions: <Widget>[
            TextButton(
                child: const Text('Cancel'),
                onPressed: () {
                  Navigator.of(context).pop();
                }),
            TextButton(
                child: const Text('Ok'),
                onPressed: () {
                  _fnameController.clear();
                  _lnameController.clear();
                  _mobileController.clear();
                  _emailController.clear();
                  _passwordController.clear();
                  _conPasswordController.clear();
                  _addressController.clear();
                  Navigator.of(context).pop();
                })
          ],
        );
      },
    );
  }

  void _validateInputs() {
    if (_formKey.currentState?.validate() ?? false) {
      // If all data are correct then save data to our variables
      _formKey.currentState?.save();
      showAlert();
    } else {
      // If all data are not valid then start auto validation.
      setState(() {
      });
    }
  }

  Widget FormUI() {
    return Column(
      children: <Widget>[
        TextFormField(
          controller: _fnameController,
          textInputAction: TextInputAction.next,
          decoration: const InputDecoration(
            labelText: 'First Name',
            labelStyle: TextStyle(
                fontSize: 17, color: Colors.black, fontWeight: FontWeight.bold),
            icon: Icon(Icons.account_box),
          ),
          keyboardType: TextInputType.text,
          validator: validateName,
          onSaved: (String? val) {
          },
        ),
        TextFormField(
          controller: _lnameController,
          textInputAction: TextInputAction.next,
          decoration: const InputDecoration(
            labelText: 'Last Name',
            labelStyle: TextStyle(
                fontSize: 17, color: Colors.black, fontWeight: FontWeight.bold),
            icon: Icon(Icons.account_box),
          ),
          keyboardType: TextInputType.text,
          // validator: validateName,
          /* onSaved: (String val) {
            _lname = val;
          },*/
        ),
        TextFormField(
          controller: _mobileController,
          textInputAction: TextInputAction.next,
          decoration: const InputDecoration(
            labelText: 'Mobile Number',
            labelStyle: TextStyle(
                fontSize: 17, color: Colors.black, fontWeight: FontWeight.bold),
            icon: Icon(Icons.add_call),
          ),
          keyboardType: TextInputType.phone,
          validator: validateMobile,
          onSaved: (String? val) {
          },
        ),
        TextFormField(
          controller: _emailController,
          textInputAction: TextInputAction.next,
          decoration: const InputDecoration(
            labelText: 'Email',
            labelStyle: TextStyle(
                fontSize: 17, color: Colors.black, fontWeight: FontWeight.bold),
            icon: Icon(Icons.alternate_email),
          ),
          keyboardType: TextInputType.emailAddress,
          validator: validateEmail,
          onSaved: (String? val) {
          },
        ),
        TextFormField(
          obscureText: true,
          controller: _passwordController,
          textInputAction: TextInputAction.next,
          decoration: const InputDecoration(
            labelText: 'Password',
            labelStyle: TextStyle(
                fontSize: 17, color: Colors.black, fontWeight: FontWeight.bold),
            icon: Icon(Icons.pages),
          ),
          keyboardType: TextInputType.text,
          validator: validatePassword,
          onSaved: (String? val) {
          },
        ),
        TextFormField(
          obscureText: true,
          controller: _conPasswordController,
          textInputAction: TextInputAction.next,
          decoration: const InputDecoration(
            labelText: 'Confirm Password',
            labelStyle: TextStyle(
                fontSize: 17, color: Colors.black, fontWeight: FontWeight.bold),
            icon: Icon(Icons.pages),
          ),
          keyboardType: TextInputType.text,
          validator: validateConPassword,
          onSaved: (String? val) {
          },
        ),
        TextFormField(
          controller: _addressController,
          textInputAction: TextInputAction.done,
          decoration: const InputDecoration(
            labelText: 'Address',
            labelStyle: TextStyle(
                fontSize: 17, color: Colors.black, fontWeight: FontWeight.bold),
            icon: Icon(Icons.home),
          ),
          keyboardType: TextInputType.text,
          onSaved: (String? val) {
          },
        ),
        const Padding(padding: EdgeInsets.fromLTRB(0, 20, 0, 0)),
        ButtonTheme(
          buttonColor: Colors.blueAccent,
          minWidth: 300,
          height: 50.0,
          child: ElevatedButton(
              onPressed: _validateInputs,
              child: const Text(
                "Sign Up",
                style: TextStyle(color: Colors.white, fontSize: 20.0),
              )),
        ),
        const Padding(padding: EdgeInsets.fromLTRB(0, 20, 0, 0)),
        TextButton(
          onPressed: () {
            Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginScreen()),
                      );
          },
          child: const Text(
            "Already have an account? Login",
            style: TextStyle(color: Colors.blue),
          ),
        ),
      ],
    );
  }

  String? validateName(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter some text';
    }
    return null;
  }

  String? validateMobile(String? value) {
    if (value?.length != 10) {
      return 'Mobile mumber must be of 10 characters';
    } else {
      return null;
    }
  }

  String? validateEmail(String? value) {
    Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = RegExp(pattern.toString());
    if (!regex.hasMatch(value!)) {
      return 'Enter Valid Email';
    } else {
      return null;
    }
  }

  String? validatePassword(String? value) {
    if (value!.trim().length < 6) {
      return 'Password must be 6 character length';
    } else {
      return null;
    }
  }

  String? validateConPassword(String? value) {
    String pass = _passwordController.text;
    String conpass = _conPasswordController.text;

    if (pass != conpass) {
      return 'Password and confirm password must be eqauls';
    } else {
      return null;
    }
  }
}
