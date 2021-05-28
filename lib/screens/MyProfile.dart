
import 'package:flutter/material.dart';

class MyProfile extends StatefulWidget {
  @override
  _MyProfileState createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Profile'),
        backgroundColor: Colors.blue,
        elevation: 2.0,
      ),

       body: ListView(
          children: <Widget>[
            InkWell(
              child: ListTile(
                title: Text('Nom:'),
                trailing: Wrap(
                  spacing: 12, // space between two icons
                  children: <Widget>[
                    Text('Jibhoum mn Data', style: TextStyle(fontWeight: FontWeight.w100),),// icon-1
                    Icon(Icons.arrow_forward_ios), // icon-2
                  ],
                ),
              ),
            ),
            InkWell(
              child: ListTile(
                title: Text('Photo'),
                trailing: Wrap(
                  spacing: 12, // space between two icons
                  children: <Widget>[
                    Icon(Icons.account_circle), // icon-1
                    Icon(Icons.arrow_forward_ios), // icon-2
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              child: ListTile(
                title: Text('Informations sur le compte'),
                trailing: Wrap(
                  spacing: 12, // space between two icons
                  children: <Widget>[
                    Text('email@email.com', style: TextStyle(fontWeight: FontWeight.w100)), // icon-1
                    Icon(Icons.arrow_forward_ios), // icon-2
                  ],
                ),
              ),
            ),
            InkWell(
              child: ListTile(
                title: Text('Shipping Addresses: '),
                trailing: Wrap(
                  spacing: 12, // space between two icons
                  children: <Widget>[
                    Icon(Icons.arrow_forward_ios), // icon-2
                  ],
                ),
              ),
            ),
            InkWell(
              child: ListTile(
                title: Text('Credit Cards: '),
                trailing: Wrap(
                  spacing: 12, // space between two icons
                  children: <Widget>[
                    Icon(Icons.credit_card),
                    Icon(Icons.arrow_forward_ios), // icon-2
                  ],
                ),
              ),
            ),
          ],
        ),

    );
  }
}
