import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/Entities/Item.dart';
import 'package:flutter_ecommerce_app/models/ProductDetails.dart';
import 'package:flutter_ecommerce_app/screens/ProductDetails.dart';
import 'package:http/http.dart' as http;

class DataFromApi extends StatefulWidget {
  @override
  _DataFromApiState createState() => _DataFromApiState();
}

class _DataFromApiState extends State<DataFromApi> {
  getItemData() async {
    String url = 'http://192.168.1.7:8010/item/getall';
   var response = await http.get(Uri.parse(url));
   var jsonData = jsonDecode(response.body);
   List<Item> items = [];
   for(var u in jsonData){
     Item item = Item.fromJson(u);
    items.add(item);
   }
   print(items.length);
   return items;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('All Products'),
      ),
      body: Container(child: Card(
        child: FutureBuilder(
          future: getItemData(),
          builder: (context, snapshot){
            if(snapshot.data == null){
              return Container(child: Center(
                child: Text('Loading'),
              ));
            } else return GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 5.0,
                  mainAxisSpacing: 5.0,
                ),
                itemCount: snapshot.data.length,
                 itemBuilder: (context, i){
                  return InkWell(
                    onTap: ()=> Navigator.of(context).push(new MaterialPageRoute(builder: (context) => new ProductsDetailss(snapshot.data[i]))) ,
                    child: GridTile(
                      child: Text(''),
                    header: Container(child: Image.network(snapshot.data[i].imageUrl)),
                        footer: Container(
                          color: Colors.white70,
                        child: ListTile(
                            leading: Padding(
                              padding: const EdgeInsets.all(1.0),

                                child: Column(
                                  children: <Widget>[
                                    Text(snapshot.data[i].title,style: TextStyle(fontWeight: FontWeight.bold), textAlign: TextAlign.left),
                                    Text(snapshot.data[i].description, textAlign: TextAlign.left, style: TextStyle(fontWeight: FontWeight.w300)),
                                    Text("\$${snapshot.data[i].price}",style: TextStyle(fontWeight: FontWeight.bold), textAlign: TextAlign.left),

                                  ],
                                ),

                            ),
                          ),
                        )),
                  );

                 });
          },
        ),
      ),)
    );
  }
}
