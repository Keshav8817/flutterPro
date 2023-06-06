import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/routes.dart';

class LoginPage extends StatefulWidget {
  

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "" ;
 bool changeButton = false ;

 final _formKey = GlobalKey<FormState>();

 moveToHome(BuildContext context)async {
            setState(() {
              changeButton = true ;
            });
            await Future.delayed(Duration(seconds: 1));
              Navigator.pushNamed(context, MyRoutes.homeRoute);
          }
  @override
  Widget build(BuildContext context) {
    return Material(
      key: _formKey,
      color: Colors.white,
      child: SingleChildScrollView(child: Column(children: [
        Image.asset("assets/images/login.png",fit: BoxFit.cover,),
      Padding(padding: const EdgeInsets.symmetric(vertical: 16 , horizontal: 32),
      child: Column(
        children: [
          Text("Welcome $name"),
          TextFormField(
          decoration: InputDecoration(hintText: "Enter User Name",labelText: "User Name",
          ),
              // Update state 
          onChanged: (value) {name = value; setState(() {
          });},
        ),
        TextFormField(
          obscureText: true,
          decoration: InputDecoration(hintText: "Enter Password",labelText: "Password",),
        ) ,

        SizedBox(
          height: 50,

        ),

        InkWell(
          onTap: () => moveToHome(context),
          child: AnimatedContainer(
           duration: Duration(seconds: 1),
            height: 50,
            width: changeButton? 50: 150,
            alignment: Alignment.center,
            child: changeButton? Icon(Icons.done): Text("Login",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18),
              ),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(changeButton? 50: 8),
              ),
          ),
        )
        // ElevatedButton(
        //   child: Text("Login"),
        //   onPressed: () {
        //     Navigator.pushNamed(context, MyRoutes.homeRoute);
        //   },
        //   )
        ],
      ),),
      ],),)
    );
  }
}