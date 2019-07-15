import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("chuck"),
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
      body: ListView(
        children: <Widget>[
          Container(
              height: 200.0,
              child: Swiper(
                itemBuilder: (BuildContext context, int index) {
                  return Image.asset(
                    "images/slider_pic" + (index + 1).toString() + ".jpg",
                    fit: BoxFit.fill,
                  );
                },
                itemCount: 5,
                pagination: SwiperPagination(),
                autoplay: true,
              )),
          Text('body'),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.home),
        onPressed: () {
          print('FloatingActionButton');
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.category), title: Text("我的")),
          BottomNavigationBarItem(
              icon: Icon(Icons.bubble_chart), title: Text("消息")),
          BottomNavigationBarItem(icon: Icon(Icons.settings), title: Text("设置"))
        ],
      ),
    );
  }
}
