import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("demo"),
        actions: <Widget>[
          IconButton(
            // action button
            icon: Icon(Icons.directions_bike),
            onPressed: () => {},
          ),
          IconButton(
            // action button
            icon: Icon(Icons.directions_car),
            onPressed: () => {},
          ),
          PopupMenuButton(
            // overflow menu
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem(
                  value: "1",
                  child: Text(
                    "1",
                  ),
                ),
                PopupMenuItem(
                  value: "2",
                  child: Text(
                    "2",
                  ),
                )
              ];
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(padding: EdgeInsets.only(), children: <Widget>[
          UserAccountsDrawerHeader(
            margin: EdgeInsets.zero,
            accountName: Text("chuck"),
            accountEmail: Text("chuck@qq.com"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage("images/user.jpg"),
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              child: Text("B"),
            ),
            title: Text("blog"),
            trailing: Icon(Icons.add_location),
            onTap: () => {Navigator.of(context).pushNamed("/blog")},
          ),
          ListTile(
            leading: CircleAvatar(
              child: Text("P"),
            ),
            title: Text("portfolio"),
            subtitle: Text("portfolio"),
            trailing: Icon(Icons.airplay),
            onTap: () => {Navigator.of(context).pushNamed("/portfolio")},
          ),
          ExpansionTile(
              leading: CircleAvatar(
                child: Text("S"),
              ),
              title: Text("Sublist"),
              children: <Widget>[
                ListTile(title: Text("One")),
                ListTile(title: Text('Two')),
                ListTile(title: Text('Free')),
                ListTile(title: Text('Four'))
              ])
        ]),
      ),
      body: Text('body'),
      floatingActionButton: Text('foot'),
    );
  }
}
