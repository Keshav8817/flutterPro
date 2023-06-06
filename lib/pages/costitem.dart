import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../models/cost_item.dart';
import '../widgest/item_widget.dart';

 class CostItems extends StatefulWidget {

  @override
  State<CostItems> createState() => _CostItemsState();
}

class _CostItemsState extends State<CostItems> {

  
   @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 3));
  final ciJson =  await rootBundle.loadString("assets/files/CItems.json");
  final decodeJson = jsonDecode(ciJson);
  var productsData = decodeJson["PortItems"];
  CostItem.items = List.from(productsData).map<Item>((item) => Item.fromMap(item)).toList(); 
  setState(() { 
  });
  

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cost Items"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: (CostItem!= null && CostItem.items.isNotEmpty) ?ListView.builder(
          itemCount: CostItem.items.length,
          itemBuilder: (context, index){
            return ItemWidget(
              item: CostItem.items[index],
            );
          } ,
        ): Center(child: CircularProgressIndicator()),
      ),
    );
  }
}