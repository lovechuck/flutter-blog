import 'package:blog/models/blog-arg.dart';
import 'package:flutter/material.dart';

class View extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final BlogArg args = ModalRoute.of(context).settings.arguments;

    return new Scaffold(
      appBar: new AppBar(
        title: new Text('VIEW'),
      ),
      body: new Center(
        child: new RaisedButton(
          child: new Text('VIEW'),
          onPressed: () {
            // Navigate to second screen when tapped!
            print(args.guid);
          },
        ),
      ),
    );
  }
}
