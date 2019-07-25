import 'package:blog/models/blog-arg.dart';
import 'package:flutter/material.dart';

class Blog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BLOG'),
      ),
      body: Center(
        child: ListView(
          children: <Widget>[
            Card(
              elevation: 15.0, //设置阴影
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
              ),
              child: Column(
                // card只能有一个widget，但这个widget内容可以包含其他的widget
                children: [
                  ListTile(
                    title: Text(
                      'Lorem Ipsum is simply dummy text of the printing and typesetting industry ',
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    subtitle: Text('子标题'),
                    leading: Icon(
                      Icons.restaurant_menu,
                      color: Colors.blue[500],
                    ),
                  ),
                  Divider(),
                  ListTile(
                    title: Text(
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing",
                      style: TextStyle(
                        fontWeight: FontWeight.w100,
                        color: Colors.black54,
                      ),
                    ),
                  ),
                  ListTile(
                    onTap: () => {
                          Navigator.pushNamed(
                            context,
                            "/blog/view",
                            arguments: BlogArg("123456"),
                          ),
                        },
                    title: Text('详情'),
                    leading: Icon(
                      Icons.chrome_reader_mode,
                      color: Colors.blue[500],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
