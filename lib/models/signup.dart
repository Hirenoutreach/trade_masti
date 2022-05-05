import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  var _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          color: Color.fromARGB(255, 211, 240, 254),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Image(
              //   image: AssetImage(
              //       "assets\image\WhatsApp Image 2022-04-27 at 3.02.03 PM.jpg"),
              // ),
              Text(
                "TradeMasti",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 44, 162, 168),
                    decoration: TextDecoration.none),
              ),

              SizedBox(
                height: 20,
              ),

              Card(
                elevation: 3,
                color: Color.fromARGB(255, 211, 240, 254),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    fillColor: Colors.grey[100],
                    hintText: "UserName",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),

              SizedBox(
                height: 10,
              ),

              Card(
                elevation: 3,
                color: Color.fromARGB(255, 211, 240, 254),
                child: Form(
                  key: _formKey,
                  child: TextFormField(
                    //  controller: widget.controller,
                    decoration: InputDecoration(
                      hintText: "Email id",
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      prefixIcon: Icon(Icons.mail),
                      suffixIcon: IconButton(
                        icon: Icon(Icons.close),
                        onPressed: () {},
                      ),
                    ),
                    keyboardType: TextInputType.emailAddress,
                    autofillHints: [AutofillHints.email],
                    //  validator: (email)=>email!=null && !Emailvalidator.validate(email),
                  ),
                ),
              ),

              SizedBox(
                height: 10,
              ),

              Card(
                elevation: 3,
                color: Color.fromARGB(255, 211, 240, 254),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.flag),
                    fillColor: Colors.grey[100],
                    hintText: "Country",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),

              SizedBox(
                height: 10,
              ),

              Card(
                elevation: 3,
                color: Color.fromARGB(255, 211, 240, 254),
                child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.mobile_friendly_outlined),
                    fillColor: Colors.grey[100],
                    hintText: "Mobile Number",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),

              // Card(
              //   elevation: 3,
              //   color: Color.fromARGB(255, 211, 240, 254),
              //   child: TextField(
              //     decoration: InputDecoration(
              //       prefixIcon: Icon(Icons.create_outlined),
              //       fillColor: Colors.grey[100],
              //       hintText: "Email id",
              //       border: OutlineInputBorder(
              //         borderRadius: BorderRadius.circular(5),
              //         borderSide: BorderSide.none,
              //       ),
              //     ),
              //   ),
              // ),

              SizedBox(
                height: 10,
              ),

              Card(
                elevation: 3,
                color: Color.fromARGB(255, 211, 240, 254),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.password),
                    fillColor: Colors.grey[100],
                    hintText: "Password",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),

              SizedBox(
                height: 20,
              ),

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 44, 162, 168)),
                onPressed: () {
                  Navigator.pushNamed(context, 'login');
                },
                child: Text(
                  "Sign Up",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 217, 240, 241)),
                ),
              ),

              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
