import 'package:flutter/material.dart';
import '../models/cost_item.dart';
class ItemWidget extends StatelessWidget {
  final Item item ;
  const ItemWidget({ Key? key , required this.item}):super(key: key);

  

  @override
  Widget build(BuildContext context) { 
    return Card(
      
      child: ListTile(
        onTap: () {
          print(" ${item.name} Pressed ");
        },
        title: Text(item.name),
    
      ),
    );
  }
}