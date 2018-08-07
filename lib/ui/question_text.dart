import 'package:flutter/material.dart';




class QuestionText extends StatefulWidget {

  final String _question; 
  final int _questionNumber; 

  QuestionText(this._question, this._questionNumber); 


  @override
  State createState() => new QuestionTextState();
}

class QuestionTextState extends State<QuestionText> with SingleTickerProviderStateMixin {

Animation<double> _fontSizeAnimation;
AnimationController _fontSizeAnimationController; 

@override
void initState() {
  super.initState();
  _fontSizeAnimationController = new AnimationController(duration: new Duration(milliseconds: 500), vsync: this); //vsync handles animations that go out sides the screen. 
  _fontSizeAnimation = new CurvedAnimation(parent:_fontSizeAnimationController, curve: Curves.linear);
  _fontSizeAnimation.addListener( () => this.setState(() {})); //sets state everytime font updates
  _fontSizeAnimationController.forward();
}

 @override
  void didUpdateWidget(QuestionText oldWidget) { //eveytime the widget updates... 
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);

    if (oldWidget._question != widget._question){
      _fontSizeAnimationController.reset();
      _fontSizeAnimationController.forward();
    }

  }

  @override
  Widget build(BuildContext context){
      return new Material (
          color: Colors.white,
          child: new Padding (
            padding: new EdgeInsets.all(15.0),
            child: new Center (
                  child: new Text(widget._question.toString(), 
                  style: new TextStyle(fontSize: _fontSizeAnimation.value * 15.0)),
          ),
          ),
          );
  }
}

