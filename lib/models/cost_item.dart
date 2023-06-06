class CostItem{
  static List<Item> items = [];
}
class Item{
  final int id ; 
  final String name ; 

Item({required this.id , required this.name});
factory Item.fromMap(Map<String,dynamic> map){
 return Item(
    id: map["id"],
    name: map["name"],
  );

}
 
}