import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  //Color c = Color.fromRGBO(248,95,106,1.0);
  bool _passwordVisible = false;
  @override
  void initState() {
    _passwordVisible = false;
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        //crossAxisAlignment: CrossAxisAlignment.center,
        //mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Image.asset(
              "assets/images/cloud.png",
              height: 200.0,
              width: 100.0,
              // alignment: Alignment.topCenter,
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.fromLTRB(20, 10, 8, 5),
              child: Text(
                "Sign In",
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.fromLTRB(20, 2, 8, 5),
              child: Text(
                "Hi there! Nice to see you again.",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[500],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              padding: EdgeInsets.fromLTRB(20, 1, 8, 1),
              child: Text(
                "Email",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14.0,
                    color: Color.fromRGBO(248,95,106,1.0),
                  ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(20, 1, 20, 1),
            child: TextField(
              controller: nameController,
              decoration: InputDecoration(
                  border: UnderlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.grey,
                      ),
                  ),
              ),
             ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              padding: EdgeInsets.fromLTRB(20, 1, 20, 1),
              child: Text(
                "Password",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14.0,
                  color: Color.fromRGBO(248,95,106,1.0),
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(20, 1, 20, 8),
            child: TextField(
              obscureText: !_passwordVisible,
              controller: passwordController,
              decoration: InputDecoration(
                border: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.grey,
                  ),
                ),
                suffixIcon: IconButton(
                  icon: Icon(
                    _passwordVisible
                        ? Icons.visibility
                        : Icons.visibility_off,
                    color: Colors.grey[500],
                  ),
                  onPressed: () {
                    setState(() {
                      _passwordVisible = !_passwordVisible;
                    });
                  },
                ),
              ),
              ),
            ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.90,
            height: 60,
            child: Container(
              padding: EdgeInsets.all(10.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: ElevatedButton(
                  onPressed: (){},
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Color.fromRGBO(248,95,106,1.0)),
                    padding: MaterialStateProperty.all(EdgeInsets.fromLTRB(30, 5, 30, 5)),
                  ),
                  child: Text(
                      "Sign In",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                      ),
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10, 20, 10, 2),
              child: Text(
                "or use social media platform",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[500],
                  ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(14.0),
                  child: SizedBox(
                    width: 120.0,
                    child: SignInButton(
                      // Buttons.GoogleDark,
                      Buttons.Google,
                      // mini: true,
                      text: "Google",
                      onPressed: () {},
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(14.0),
                  child: SizedBox(
                    width: 120.0,
                    child: SignInButton(
                      Buttons.Facebook,
                      // mini: true,
                      text: "Facebook",
                      onPressed: () {},
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Align(
                alignment: Alignment.centerLeft,
                child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.50,
                    child: TextButton(
                    onPressed: (){
                      Navigator.pushNamed(context, '/forgotpass');
                    },
                    child: Text(
                      "Forgot Password?",
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                    style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all(Colors.grey[500]),
                    ),
                  )
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.50,
                    child: TextButton(
                      onPressed: (){
                        Navigator.pop(context);
                        Navigator.pushNamed(context, '/signup');
                      },
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                          color: Color.fromRGBO(248,95,106,1.0),
                        ),
                      ),
                      style: ButtonStyle(
                        foregroundColor: MaterialStateProperty.all(Colors.grey[500]),
                      ),
                    )
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
