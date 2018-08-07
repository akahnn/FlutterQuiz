import 'package:flutter/material.dart';

class ScorePage extends StatelessWidget{

@override
Widget build(BuildContext context){
return new Material(
  color: Colors.blue,
  child: new Column(
    children: <Widget>[
     new Text("Your score"),
     new Text("4/10"),
     new Icon(Icons.play_arrow),
    ],
  )
); 
}
}