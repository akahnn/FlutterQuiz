import 'package:flutter/material.dart';
import 'quiz_page.dart';

class LandingPage extends StatelessWidget {
  //Use StatelessWidget when there is nothing to update.
  @override
    Widget build(BuildContext context) { //standard build method 
      return new Material(
      color: Colors.red,
      child: new InkWell(
        onTap: () => Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new QuizPage())),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[ 
            new Text("Let's Quiz", style: new TextStyle(color: Colors.white, fontSize: 30.0, fontWeight: FontWeight.bold),),
            new Text("Tap to Start!", style: new TextStyle(color: Colors.white, fontSize: 16.0, fontWeight: FontWeight.bold),),
          ],
        ),
      ),
    );
  }
}
//minimize nesting as much as possible 
