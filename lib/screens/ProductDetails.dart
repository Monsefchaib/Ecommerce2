import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/Entities/Item.dart';
dynamic dataa;
class ProductsDetailss extends StatefulWidget {

  ProductsDetailss(data){
   dataa = data;

  }

  @override
  _ProductsDetailssState createState() => _ProductsDetailssState();
}

class _ProductsDetailssState extends State<ProductsDetailss> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
    title: Text(dataa.title),

    ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 300,
            child: GridTile(
              child: Container(
                color: Colors.white,
                child: Image.network(dataa.imageUrl),
              ),
            ),
          ),
          Container(
           height: 50,
            child: Row(
              children: [
                Padding(padding: EdgeInsets.all(8),
                    child: Text(dataa.title,style: TextStyle(fontWeight: FontWeight.bold) ,)
                ),
                Expanded(

                  child: InkWell(
                    child: Text("\$${dataa.price}", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue,),textDirection: TextDirection.ltr,
                      textAlign: TextAlign.right,),

                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Description :',style: TextStyle(fontWeight: FontWeight.bold) ),
          ),
          Container(
            height: 100,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(dataa.description,style: TextStyle(fontWeight: FontWeight.normal)),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              boxShadow: [
                BoxShadow(color: Colors.black38, spreadRadius: 1),
              ],
            ),
          ),
          Row(
              children: <Widget>[
                Expanded(
                  child: MaterialButton(
                    onPressed: (){},
                    color: Colors.red,
                    textColor: Colors.white,
                    elevation: 0.2,
                    child: Text("Buy Now"),
                  ),
                ),
                IconButton(icon: Icon(Icons.add_shopping_cart), onPressed: (){}, color: Colors.red),
                IconButton(icon: Icon(Icons.favorite_border), onPressed: (){}, color: Colors.red),

              ],
          )
        ],
      ),
    );
  }
}
