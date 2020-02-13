import 'package:coin/new_page.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('drawer App'),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.amber,
                child: Text('A'),
              ),
              accountName: Text('Abdalla Ayash'),
              accountEmail: Text('abdo3yash@gmail.com'),
              otherAccountsPictures: <Widget>[
                CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Text('M'),
                )
              ],
            ),
            ListTile(
                title: Text('First Page'),
                trailing: Icon(Icons.accessibility_new),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).push(new MaterialPageRoute(
                      builder: (BuildContext context) =>
                          NewPage('first page')));
                }),
            ListTile(
                title: Text('Second Page'),
                trailing: Icon(Icons.accessible),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).push(new MaterialPageRoute(
                      builder: (BuildContext context) =>
                          NewPage('second page')));
                }),
            Divider(),
            ListTile(
              title: Text('Close'),
              trailing: Icon(Icons.close),
              onTap: () => Navigator.of(context).pop(),
            ),
          ],
        ),
      ),
      body: new Container(
          child: new Center(
        child: Text('HomePage'),
      )),
    );
  }
}
