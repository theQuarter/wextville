import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPgState();
}

class _LoginPgState extends State<LoginPage> {
  bool? checkBoxValue = false;
  bool _obscureText = true;

  //final String _password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffF8F8F8),
        body: Material(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  height: 100,
                  width: 10,
                ),
                Image.asset(
                  "assets/images/Logo.png",
                  height: 60,
                  width: 60,
                ),
                SizedBox(
                  height: 10,
                  width: 10,
                ),
                Container(
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Welcome back!",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                  width: 10,
                ),
                Container(
                  padding: EdgeInsets.only(left: 20, right: 20, bottom: 10),
                  child: Text("Email"),
                ),
                Container(
                  height: 60,
                  padding: EdgeInsets.only(left: 20, right: 20, bottom: 10),
                  child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                              borderSide: BorderSide(width: 2),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0))),
                          suffixIcon: InkWell(
                            onTap: () {
                              setState(() {
                                // _obscureText1 = !_obscureText1;
                              });
                            },
                            child: Icon(
                              Icons.check_circle_outlined,
                              color: Colors.green,
                            ),
                          ),
                          hintText: 'Enter Email ID',
                          hintStyle: new TextStyle(
                            fontFamily: 'Roboto',
                          ))),
                ),
                SizedBox(
                  height: 10,
                  width: 10,
                ),
                Container(
                  padding: EdgeInsets.only(left: 20, right: 20, bottom: 10),
                  child: Text("Password"),
                ),
                Container(
                  height: 60,
                  padding: EdgeInsets.only(left: 20, right: 20, bottom: 10),
                  child: TextFormField(
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                          borderSide: BorderSide(width: 2),
                          borderRadius:
                              BorderRadius.all(Radius.circular(10.0))),
                      suffixIcon: InkWell(
                        onTap: () {
                          setState(() {
                            _obscureText = !_obscureText;
                          });
                        },
                        child: Icon(
                          _obscureText
                              ? Icons.visibility_off_outlined
                              : Icons.visibility_outlined,
                        ),
                      ),
                      hintText: 'Enter Password',
                      hintStyle: new TextStyle(
                        fontFamily: 'Roboto',
                      ),
                    ),
                    //validator: (val) => val.length < 6 ? 'Password too short.' : null,
                    //onSaved: (val) => _password = val,
                    obscureText: _obscureText,
                  ),
                ),
                SizedBox(
                  height: 10,
                  width: 10,
                ),
                Container(
                  padding: EdgeInsets.only(left: 10, right: 10, bottom: 3),
                  child: Row(
                    children: <Widget>[
                      // Check Box here

                      Checkbox(
                          value: checkBoxValue,
                          checkColor: Colors.blue,
                          onChanged: (val) {
                            setState(() {
                              checkBoxValue = val;
                            });
                          }),

                      // Check Box end

                      Text.rich(
                        TextSpan(
                            text: 'I agree',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14.0,
                            ),
                            children: <InlineSpan>[
                              TextSpan(
                                  text: ' Privacy Policy',
                                  style: TextStyle(
                                    color: Colors.blue,
                                    decoration: TextDecoration.underline,
                                  )),
                              TextSpan(
                                  text: ' And',
                                  style: TextStyle(
                                    color: Colors.black,
                                  )),
                              TextSpan(
                                  text: ' Term & Condict.',
                                  style: TextStyle(
                                    color: Colors.blue,
                                    decoration: TextDecoration.underline,
                                  )),
                            ]),
                      ),
                    ],
                  ),
                ),
                Container(
                    padding: EdgeInsets.only(left: 20, right: 20, bottom: 10),
                    child: ElevatedButton(
                      // child: Text("Log In"),

                      onPressed: () {
                        setState(() {
                          Navigator.pushNamed(context, '/Home');
                        });
                      },
                      style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.zero,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20))),
                      child: Ink(
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                colors: [Color(0xff25FEFE), Color(0xff019797)],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter),
                            borderRadius: BorderRadius.circular(10)),
                        child: Container(
                          //width: 300,
                          height: 45,
                          alignment: Alignment.center,
                          child: Text(
                            'Log In',
                            style: TextStyle(
                                fontSize: 16, fontStyle: FontStyle.normal),
                          ),
                        ),
                      ),
                    )),
                Container(
                    padding: EdgeInsets.only(
                      top: 10,
                    ),
                    alignment: Alignment.center,
                    child: TextButton(
                      child: Text(
                        "Forgot Password?",
                        style: TextStyle(
                          color: Colors.black,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                      onPressed: () {
                        setState(() {});
                      },
                    )),
                SizedBox(
                  height: 40,
                ),
                Text(
                  "Log in with social account",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),

                SizedBox(
                  height: 10,
                ),

                // Bottom Button Facebook or Twitter
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                            primary: Color(0xff0043A8),
                            padding: EdgeInsets.only(
                                left: 42, right: 42, top: 15, bottom: 15),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                        onPressed: () {},
                        icon: Icon(Icons.facebook_outlined),
                        label: Text("Facebook")),

                    //twitter button

                    ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                            primary: Color(0xff00EEEE),
                            padding: EdgeInsets.only(
                                left: 42, right: 42, top: 15, bottom: 15),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                        onPressed: () {},
                        icon: Icon(FontAwesomeIcons.twitter),
                        label: Text("Twitter")),
                  ],
                ),

                SizedBox(
                  height: 30,
                ),

                Text.rich(
                  TextSpan(
                      text: ' Don’t have any account?',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                      children: <InlineSpan>[
                        TextSpan(
                            text: ' Sign Up',
                            style: TextStyle(
                              color: Colors.blue,
                            ),
                            recognizer: TapGestureRecognizer()..onTap = () {})
                      ]),
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ),
        ));
  }
}
