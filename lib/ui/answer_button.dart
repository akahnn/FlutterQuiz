import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget{

final bool _answer;
final VoidCallback _onTap;  ////typedef  - signature for a function 
AnswerButton(this._answer, this._onTap);

@override
Widget build(BuildContext context) {
          return  new Expanded(
            child: new Material( //true button
            color: _answer == true ? Colors.greenAccent : Colors.red,
            child: new InkWell(
              onTap: () => _onTap(), 
              child: new Center(
                child: new Container(
                  padding: new EdgeInsets.all(15.0),
                  decoration: new BoxDecoration(
                    border: new Border.all(color: Colors.white, width: 5.0)
                  ),
                  child: new Text(_answer == true ? "True" : "False",
                  style: new TextStyle(color: Colors.white, fontSize: 30.0, fontWeight: FontWeight.bold),),
                ),
              ),
            ),
          ),
          );
}
}

