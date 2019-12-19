import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

void main() => runApp(new SliderList());
class SliderApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Slider List",
      theme: new ThemeData(
        primaryColor: Colors.deepPurple,
        brightness: Brightness.dark,
      ),
      home: new SliderList()
    );
  }
}

class SliderList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(

      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("Slider List"),
          backgroundColor: Colors.deepPurple,
        ),
        body: new Slidable(
          delegate: new SlidableDrawerDelegate(),
          actionExtentRatio: 0.25,
          child: new ListTile(
            leading: new CircleAvatar(
              backgroundColor: Colors.deepPurple,
              foregroundColor: Colors.white,
              child: new Text("F"),
            ),
            title: new Text("Tile"),
            subtitle: new Text('SlidableDrawerDelegate'),
          ),
          actions: <Widget>[
            new IconSlideAction(
              icon: Icons.archive,
              color: Colors.deepPurple,
              caption: "Archive",

            ),
            new IconSlideAction(
              icon: Icons.delete,
              color: Colors.white,
              caption: "Delete",
              onTap: () =>
                 _showSnackBar("Deleted"),
            ),
          ],
          secondaryActions: <Widget>[
        new IconSlideAction(
        caption: 'More',
          color: Colors.deepPurple,
          icon: Icons.more_horiz,
          onTap: () => _showSnackBar('More'),
        ),
        new IconSlideAction(
          caption: 'Share',
          color: Colors.white,
          icon: Icons.share,
          onTap: () => _showSnackBar('Shared'),
        ),
        ],
      )
      ,

    ),);
  }

  Widget _showSnackBar(String s) {
    final snackBar = SnackBar(content: Text(s));
    return snackBar;
  }
}
