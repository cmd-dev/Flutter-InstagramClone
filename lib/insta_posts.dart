import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'insta_stories.dart';

class Posts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return index == 0
            ? Stories()
            : myListItem(
                x: index,
              );
      },
      itemCount: 5,
    );
  }
}

class myListItem extends StatelessWidget {
  final int x;

  const myListItem({Key key, this.x}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      //mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,

      children: <Widget>[
        ListTile(
          contentPadding: EdgeInsets.only(right: 0, left: 16),
          leading: myAvatar(r: 20, x: x + 3),
          title: Text('User_Name'),
          trailing: IconButton(
              icon: Icon(Icons.more_vert),
              onPressed: () {
                print('hi');
              }),
        ),
        x == 0
            ? Image.network(
                'https://images.pexels.com/photos/556416/pexels-photo-556416.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500')
            : Image.network('https://source.unsplash.com/random/$x'),
        ButtonBar(

          buttonHeight: 16,
         // mainAxisSize: MainAxisSize.max,
          alignment: MainAxisAlignment.start,
          buttonPadding: EdgeInsets.fromLTRB(8, 8, 1, 8),
          children: <Widget>[
            IconButton(
              icon: Icon(FontAwesomeIcons.heart,),
              onPressed: () {

              },
            ),
            IconButton(
              icon: Icon(FontAwesomeIcons.comment),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(FontAwesomeIcons.paperPlane),
              onPressed: () {},
            ),
            SizedBox(
              width: 173.5,
            ),
            IconButton(
              icon: Icon(FontAwesomeIcons.bookmark),
              onPressed: () {},
            ),
          ],
        ),
        Text(
          '  Liked by many',
          style: TextStyle(
            fontWeight: FontWeight.w900,
          ),
        ),
        ListTile(
          leading: myAvatar(
            r: 22,
            x: x,
          ),
          title: TextField(
            onSubmitted: (s) {
              print(s);
            },
            autocorrect: false,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'Add a comment...',
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(9),
          child: Text(
            '$x days ago',
            style: TextStyle(color: Colors.grey[400]),
          ),
        )
      ],
    );
  }
}
