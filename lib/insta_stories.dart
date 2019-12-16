import 'package:flutter/material.dart';




class Stories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [

        Positioned(
        child: myAvatar(),
        top: 20,
        left: 8,

    ),


        Container(
        margin: EdgeInsets.only(top: 20,left: 90),

        height: 70,
        child: ListView.builder(

          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.only(right: 8),
              child: new myAvatar(x:index),
            );
          },
          itemCount: 10,
          scrollDirection: Axis.horizontal,
        ),

      )
      , Positioned(
          child:Icon(Icons.add_circle,color: Colors.yellow,),
          top: 66,
          left: 56,

        ),




      ],
    );
  }}



class myAvatar extends StatelessWidget {

  final double r;
  final int x;
  myAvatar({
    Key key,this.r=35,this.x
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius:r ,


      backgroundImage:x==0?NetworkImage('https://cdn.pixabay.com/photo/2014/06/16/23/39/black-370118_640.png'): NetworkImage('https://source.unsplash.com/random/$x'),
    );
  }
}

