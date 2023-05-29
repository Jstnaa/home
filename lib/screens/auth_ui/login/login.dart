import 'package:e_commerce/constants/constants.dart';
import 'package:e_commerce/firebase_helper/firebase_auth_helper/firebase_auth_helper.dart';
import 'package:e_commerce/screens/sign_up/sign_up.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce/widgets/top_tiles/top_tiles.dart';
import 'package:e_commerce/widgets/primarybutton/primary_button.dart';
import 'package:e_commerce/constants/routes.dart';

import '../../home/home.dart';

class Login extends StatefulWidget {
  const Login({super.key});

    @override
    State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  bool isShowPassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
          const TopTiles(
            subtitle: "Welcome back to CJF Computer Shop", title: "Login"),
            const SizedBox(
              height: 46.0,
            ),
          TextFormField(
            decoration: const InputDecoration(
              hintText: "E-mail",
              prefixIcon: Icon(
                Icons.email_outlined,
              )
            ),
          ),
          const SizedBox(
            height: 12.0,
          ),
          TextFormField(
            obscureText: isShowPassword,
            decoration:  InputDecoration(
              hintText: "Password",
              prefixIcon: const Icon(
                Icons.password_sharp,
              ),
              suffixIcon: CupertinoButton(
                onPressed: () {
                  setState(() {
                    isShowPassword = !isShowPassword;
                  });
                },
                padding: EdgeInsets.zero,
                child: const Icon(
                Icons.visibility,
                color: Colors.grey,
                ),
            ),
            ),
          ),
          const SizedBox(
            height: 36.0,
          ),
         PrimaryButton(
          title: "Login",
          onPressed: () async { 
          bool isValidated =   loginValidation(email.text, password.text);
          if(isValidated) {
          bool isLogined = await FirebaseAuthHelper.instance
                .login(email.text, password.text, context);
                if(isLogined){
                  Routes.instance.pushAndRemoveUntil(
                    widget: const Home(), context: context);
              }
             }
           },
          ),
          const SizedBox(
            height: 24.0,
          ),
          const Center(
            child:Text(
            "Dont have an account?")),
          const SizedBox(
            height: 12.0,
            ),
            Center(
              child: CupertinoButton(
            onPressed: () {
              Routes.instance
              .push(widget: const Signup(), context: context);
            },
            child: const Text(
              "Create an account",
              style: TextStyle(color: Colors.black),
            ),
            ),
              ),
          ],
        ),
      ),  
    ));
  }
}