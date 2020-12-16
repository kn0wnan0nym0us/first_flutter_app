import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}
class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        elevation: 16.0,
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              // child: Text('Drawer Header'),
              // decoration: BoxDecoration(
              //   color: Colors.blue,
              // ),
              accountName: Text("User"),
              accountEmail: Text("User@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Text("User"),
              ),
            ),
            ListTile(
              title: new Text("New Group"),
              leading: new Icon(Icons.people),
            ),
            Divider(
              height: 0.1,
            ),
            ListTile(
              title: new Text("Archive"),
              leading: new Icon(Icons.archive),
            ),
            ListTile(
              title: new Text("Contacts"),
              leading: new Icon(Icons.contacts),
            ),
            ListTile(
              title: new Text("Invite Friends"),
              leading: new Icon(Icons.person_add),
            ),
            ListTile(
              title: new Text("Settings"),
              leading: new Icon(Icons.settings),
            )
          ],
        ),
      ),
      endDrawer: Drawer(
        elevation: 16.0,
        child: Column(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("User"),
              accountEmail: Text("User@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Text("User"),
              ),
            ),
            ListTile(
              title: new Text("New Group"),
              leading: new Icon(Icons.people),
            ),
            Divider(
              height: 0.1,
            ),
            ListTile(
              title: new Text("Archive"),
              leading: new Icon(Icons.archive),
            ),
            ListTile(
              title: new Text("Contacts"),
              leading: new Icon(Icons.contacts),
            ),
            ListTile(
              title: new Text("Invite Friends"),
              leading: new Icon(Icons.person_add),
            ),
            ListTile(
              title: new Text("Settings"),
              leading: new Icon(Icons.settings),
            )
          ],
        ),
      ),
    );
  }
}
