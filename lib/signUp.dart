import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  //Color c = Color.fromRGBO(248,95,106,1.0);
  bool _passwordVisible = false;
  bool _termsAndCondition = false;
  @override
  void initState() {
    _passwordVisible = false;
  }
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        padding: EdgeInsets.fromLTRB(8, 20, 8, 8),
        child: Column(
          children: <Widget>[
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.fromLTRB(40, 20, 8, 5),
                child: Text(
                  "Sign Up",
                  style: TextStyle(
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                padding: EdgeInsets.fromLTRB(20, 20, 8, 1),
                child: Text(
                  "Name",
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
                  hintText: "Your full name",
                  hintStyle: TextStyle(
                    color: Colors.grey[400],
                    fontWeight: FontWeight.bold,
                  ),
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
                padding: EdgeInsets.fromLTRB(20, 20, 8, 1),
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
                controller: emailController,
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
                padding: EdgeInsets.fromLTRB(20, 20, 8, 1),
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

            GestureDetector(
              child: Row(
                children: <Widget>[
                  Checkbox(
                    activeColor: Color.fromRGBO(248,95,106,1.0),
                    value: _termsAndCondition,
                    onChanged: (value) => setState(() {
                      _termsAndCondition = !_termsAndCondition;
                    }),
                  ),
                  Text(
                    "I agree to the ",
                    style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Terms of Services ",
                    style: TextStyle(
                        color: Color.fromRGBO(248,95,106,1.0),
                        fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "and ",
                    style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Privacy Policy.",
                    style: TextStyle(
                      color: Color.fromRGBO(248,95,106,1.0),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              onTap: () => setState(() {
                _termsAndCondition = !_termsAndCondition;
              }),
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
                      "Continue",
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Have an Account?",
                  style: TextStyle(
                    fontSize: 18.0,
                  ),
                ),
                TextButton(
                  onPressed: (){
                    Navigator.pop(context);
                    Navigator.pushNamed(context, '/signin');
                  },
                  child: Text(
                    "Sign In",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                      color: Color.fromRGBO(248,95,106,1.0),
                    ),
                  ),
                  style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all(Colors.grey[500]),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
