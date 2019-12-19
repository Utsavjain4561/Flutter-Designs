import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class SliverApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.deepPurple,
      ),
      home: new CustomAppBar(),
    );
  }
}

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(

      body: new CustomScrollView(
        slivers: <Widget>[
          new SliverAppBar(
            expandedHeight: 150.0,
            backgroundColor: Colors.deepPurple,
            pinned: false,
            floating: true,
            flexibleSpace: new FlexibleSpaceBar(
              title: new Text("Sliver App Bar"),
            ),
          ),
          new SliverList(
              delegate: new SliverChildBuilderDelegate(
                  (context, index) => new ListTile(
                        title: new Text("List item $index"),
                      )))
        ],
      ),
    );
  }
}
