import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/navigation_drawer/new_page.dart';

class NavigationDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: new ThemeData(
        primaryColor: Colors.deepPurple,
      ),
      home: new HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Drawer App"),
        elevation: defaultTargetPlatform == TargetPlatform.android ? 5.0 : 0.0,
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: new Text("Flutter"),
              accountEmail: new Text("flutter.io@gmail.com"),
              currentAccountPicture: new CircleAvatar(
                child: new Text(
                  "F",
                  style: new TextStyle(
                    fontSize: 20.0,
                  ),
                ),
                backgroundColor: Colors.white,
              ),
              otherAccountsPictures: <Widget>[
                new CircleAvatar(
                  child: new Text(
                    "G",
                    style: new TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                  backgroundColor: Colors.white,
                ),
              ],
            ),
            new ListTile(
                title: new InkWell(
                  child: new Text("Page One"),
                ),
                trailing: new Icon(Icons.arrow_upward),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).push(new MaterialPageRoute(

                      builder: (BuildContext context) =>
                          new NewPage("Page One")));
                }),
            new ListTile(
                title: new InkWell(
                  child: new Text("Page Two"),
                ),
                trailing: new Icon(Icons.arrow_downward),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).push(new MaterialPageRoute(
                      builder: (BuildContext context) =>
                          new NewPage("Page Two")));
                }),
            new Divider(),
            new ListTile(
              title: new InkWell(
                child: new Text("Close"),
                enableFeedback: true,
              ),
              trailing: new Icon(Icons.close),
              onTap: () => Navigator.of(context).pop(),
            )
          ],
        ),

      ),
      body: new Center(
        child: new Text("Home page"),
      ),
    );
  }
}
