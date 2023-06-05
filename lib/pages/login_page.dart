import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/routes.dart';

class LoginPage extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(child: Column(children: [
        Image.asset("assets/images/login.png",fit: BoxFit.cover,),
      Padding(padding: const EdgeInsets.symmetric(vertical: 16 , horizontal: 32),
      child: Column(
        children: [
            TextFormField(
          decoration: InputDecoration(hintText: "Enter User Name",labelText: "User Name",),
        ),
        TextFormField(
          obscureText: true,
          decoration: InputDecoration(hintText: "Enter Password",labelText: "Password",),
        ) ,
        ElevatedButton(
          child: Text("Login"),
          onPressed: () {
            Navigator.pushNamed(context, MyRoutes.homeRoute);
          },
          )
        ],
      ),),
      ],),)
    );
  }
}