import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mandi/colors/colors.dart';
import 'package:mandi/welcome.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import 'otp.dart';

class welcome extends StatefulWidget {
  const welcome({Key? key}) : super(key: key);

  @override
  State<welcome> createState() => _welcomeState();
}

class _welcomeState extends State<welcome> {
  final int _value = 0;
  final  _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        leading: Padding(
          padding: const EdgeInsets.only(left: 8),
          child: CircleAvatar(
            backgroundImage: AssetImage('assets/logo.jpg'),
          ),
        ),
        title: Text(
          'Welcome to MANDI',
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20),
        ),
      ),
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                    Colors.brown,
                    Colors.brown,
                    Colors.green.shade500,
                  ])),
              padding: EdgeInsets.only(left: 15, top: 40),
              child: RichText(
                text: TextSpan(
                  children: [
                    WidgetSpan(
                      child: Icon(
                        Icons.login_outlined,
                        size: 25,
                        color: Colors.green,
                      ),
                    ),
                    TextSpan(
                      text: "  Sign in ",
                      style: sign,
                    ),
                    TextSpan(
                      text: "\n         Signin to explore our Mandi ",
                      style: explore,
                    ),
                  ],
                ),
              )),
          SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.2,
                  right: 35,
                  left: 35),
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(borderSide: Mob),
                        focusedBorder: OutlineInputBorder(borderSide: Mob1),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        labelText: 'Enter Mobile number',
                        labelStyle: Mob2,
                        isDense: true,
                        // Added this
                        contentPadding: EdgeInsets.all(15), // Added this
                      ),
                      style: Theme.of(context).textTheme.headline6,
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.start,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(10),
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                       validator: (value) {
                         if (value!.isEmpty || !RegExp(r'(^(?:[+0]9)?[0-9]{10}$)')
                             .hasMatch(value)) {
                           return "Please Enter a Valid Phone Number";
                         }else{
                           return null;
                         }
                       }
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 40,
                          width: 450,
                          child: ElevatedButton(
                            onPressed: () {
                              if(_formKey.currentState!.validate()) {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => otp()),
                                );
                              }
                              else {
                                return null;
                              }
                            },
                            child: Text(
                              'send OTP',
                              style: TextStyle(fontSize: 18),
                            ),
                            style: send,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "By clicking you agree to our  ",
                                style: clicking,
                              ),
                              TextSpan(
                                text: "Terms of Use ",
                                style: terms,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
