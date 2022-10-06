import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ramen_apk/onboarding.dart';
import 'package:ramen_apk/onboarding.dart';
import 'package:ramen_apk/register.dart';
import 'package:ramen_apk/home.dart';


class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController pwdController = TextEditingController();

    var email = "nurilafnia@gmail.com";
    var pwd = "27052002";

    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          leading: GestureDetector(
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => OnBoarding()),
              );
            },
            child: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          )),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 23),
        child: Column(
          children: <Widget>[
            Align(
              alignment: Alignment.topLeft,
              child: Column(
                children: const <Widget>[
                  Text(
                    "Welcome Back",
                    style: TextStyle(
                      color: Colors.black87 ,
                      fontFamily: 'Poppins Bold',
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                  SizedBox(height: 3),
                  Text("Login to yout account",
                      style: TextStyle(
                        color: Colors.black12,
                        fontSize: 17,
                        fontFamily: 'Poppins Light',
                      )),
                ],
              ),
            ),
            SizedBox(height: 25),
            TextField(
              controller: emailController,
              style: const TextStyle(
                fontFamily: 'Poppins Light',
                fontSize: 16,
              ),
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                labelText: "Email Address",
                hintText: "Email Address",
                contentPadding:
                EdgeInsets.symmetric(horizontal: 20, vertical: 18),
                hintStyle: const TextStyle(
                  fontFamily: 'Poppins Light',
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(height: 18),
            TextField(
              controller: pwdController,
              style: const TextStyle(
                fontFamily: 'Poppins Light',
                fontSize: 16,
              ),
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                labelText: "Password",
                hintText: "Password",
                contentPadding:
                const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
                hintStyle: const TextStyle(
                  fontFamily: 'Poppins Light',
                  fontSize: 16,
                ),
              ),
            ),
            const SizedBox(height: 15),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Forgot password?",
                style: TextStyle(
                  color: Colors.orangeAccent,
                  fontSize: 16,
                  fontFamily: 'Poppins Light',
                ),
              ),
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: () {
                if (emailController.text == email) {
                  if (pwdController.text == pwd) {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => Home()));
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      backgroundColor: Colors.red,
                      content: Text("Password Salah"),
                    ));
                  }
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    backgroundColor: Colors.red,
                    content: Text("Email Salah"),
                  ));
                }
              },
              child: const Text("SIGN IN",
                  style: TextStyle(
                    fontFamily: 'Poppins Bold',
                    fontSize: 18,
                  )),
              style: ElevatedButton.styleFrom(
                  primary: Colors.orangeAccent,
                  minimumSize: const Size.fromHeight(55),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  )),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Don't have an account?",
                    style: TextStyle(
                      fontFamily: 'Poppins Light',
                      fontSize: 16,
                      color: Colors.black12,
                    )),
                SizedBox(width: 7),
                TextButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => Register()),
                    );
                  },
                  child: const Text("Sign up",
                      style: TextStyle(
                        fontFamily: 'Poppins Light',
                        fontSize: 16,
                        color: Colors.orangeAccent ,
                      )),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

