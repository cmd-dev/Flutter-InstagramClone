import 'package:flutter/material.dart';



import 'InstaBody.dart';
import 'insta_stories.dart';
import 'insta_posts.dart';


class InstaHome extends StatelessWidget {
  final topBar = new AppBar(
    backgroundColor: new Color(0xfff8faf8),
    centerTitle: true,
    elevation: 1.0,
    leading: new Icon(Icons.camera_alt),
    title: SizedBox(
        height: 35.0,
        child: Image.asset("assets/images/insta_logo.png")),
    actions: <Widget>[
      Padding(
        padding: const EdgeInsets.only(right: 12.0),
        child: Icon(Icons.send),
      )
    ],
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: topBar,
      body:Posts(),

      /* Column(
          children: <Widget>[
          Stories(),
          Expanded(child: Posts())


        ]),*/
      bottomNavigationBar:  BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.teal,
          unselectedItemColor: Colors.red,
          //backgroundColor: Colors.black,
            showSelectedLabels: false,
            showUnselectedLabels: false,
           // currentIndex: ,
            //onTap: (){},

            items: <BottomNavigationBarItem>[

              new BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),title: Text('Hi'),
              ),
              new BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                ),title: Text('Hi'),
              ),
              new BottomNavigationBarItem(
                icon: Icon(
                  Icons.add_box,
                ),title: Text('hi')
              ),
              new BottomNavigationBarItem(
                icon: Icon(
                  Icons.favorite,
                ),title: Text('Hi'),
              ),
              new BottomNavigationBarItem(
                icon: Icon(
                  Icons.account_box,
                ),title: Text('Hi'),
              ),
            ],
          ),

    );
  }
}
