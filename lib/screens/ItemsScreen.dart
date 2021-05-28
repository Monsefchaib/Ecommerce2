// import 'dart:convert';
// import 'dart:html';
//
// import 'package:flutter/material.dart';
// import 'package:flutter_ecommerce_app/Entities/Item.dart';
// import 'package:http/http.dart' as http;
//
//
// class ItemsScreen extends StatefulWidget {
//   String name;
//   String slug;
//   ItemsScreen({Key key, @required this.name, @required this.slug})
//       : super(key: key);
//
//   @override
//   _ItemsScreenState createState() => _ItemsScreenState();
// }
//
// class _ItemsScreenState extends State<ItemsScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(backgroundColor: Colors.blue,),
//       body: Container(
//           alignment: Alignment.topLeft,
//           padding: EdgeInsets.only(left: 10, right: 10),
//           child: ItemsListWidget(
//             slug: widget.slug,
//           )),
//     );
//   }
// }
//
// class ItemsListWidget extends StatelessWidget {
//   String slug;
//
//   ItemsListWidget({Key key, this.slug}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return FutureBuilder(
//         future: getAllItems() ,
//         builder: builder)
//   }
// }
// List listItem = [];
// Item item;
// Future<Item> getAllItems() async {
//   String url = 'http://192.168.1.7:8010/item/getall';
//   var res = await http.get(Uri.parse(url));
//   if (res.statusCode == 200) {
//     // If the server did return a 200 OK response,
//     // then parse the JSON.
//     List<dynamic> list = jsonDecode(res.body.toString());
//     Item items = Item.fromJson(list[0]);
//     print(list.length);
//     int i=0;
//     for(i=0;i<list.length;i++){
//       item = Item.fromJson(list[i]);
//      listItem.add(item);
//     }
//    listItem.forEach((element) => print(element.toString()));
//     return item;
//   } else {
//     // If the server did not return a 200 OK response,
//     // then throw an exception.
//     throw Exception('Failed to load album');
//   }
// }
//
// Widget createItemsView (BuildContext context, AsyncSnapshot snapshot) {
//   Item values = snapshot.data;
//   return GridView.count(
//     crossAxisCount: 2,
// //    physics: NeverScrollableScrollPhysics(),
//     padding: EdgeInsets.all(1.0),
//     childAspectRatio: 8.0 / 12.0,
//     children: List<Widget>.generate(listItem.length, (index) {
//       return GridTile(
//             child: Container(
//               child: Text(item.),
//             ),
//           );
//     }),
//   );
// }