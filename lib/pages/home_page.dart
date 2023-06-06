import 'package:flutter/material.dart';

import '../utils/routes.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
        int days = 30;
        String Time = "Days";
    return Scaffold(
        appBar: AppBar(
          title: Text("Port Cost"),
        ),
        drawer: Drawer(),
        body :Material(
      color: Colors.white,
      child: SingleChildScrollView(child: Column(children: [
      Padding(padding: const EdgeInsets.symmetric(vertical: 16 , horizontal: 32),
      child: Column(
        children: [
          TextFormField(
          decoration: InputDecoration( labelText: "Country",),
              // Update state 
        ),
        TextFormField(
          decoration: InputDecoration(labelText: "Port",),
        ) ,
         TextFormField(
          decoration: InputDecoration(labelText: "Select ETA",),
        ) ,
         TextFormField(
          decoration: InputDecoration(hintText: "Enter IMO", labelText: "IMO",),
        ) ,
          TextFormField(
          decoration: InputDecoration(hintText: "Enter Vessel Name",labelText: "Vessel Name",),
        ) ,
          TextFormField(
          decoration: InputDecoration(hintText: "Enter GRT",labelText: "GRT",),
        ),
        TextFormField(
          decoration: InputDecoration(hintText: "Enter DWT", labelText: "DWT",),
        ),
          TextFormField(
          decoration: InputDecoration(hintText: "Enter LOA",labelText: "LOA",),
        ),
          TextFormField(
          decoration: InputDecoration(hintText: "Enter Beam",labelText: "Beam",),
        ),
           TextFormField(
          decoration: InputDecoration(hintText: "Enter Draught",labelText: "Draught",),
        ),
           TextFormField(
          decoration: InputDecoration(labelText: "Select Cargo",),
        ),
           TextFormField(
          decoration: InputDecoration(hintText: "Enter Unit",labelText: "Unit",),
        ),
           TextFormField(
          decoration: InputDecoration(hintText: "Enter Comments",labelText: "Comments",),
        ),
        

        SizedBox(
          height: 50,
        ),

        ElevatedButton(
          child: Text("Submit"),
          onPressed: () {
          Navigator.pushNamed(context, MyRoutes.costItems);

          },
          )
        ],
      ),
      ),
      ],),
      )
    ),
    );
  }
}