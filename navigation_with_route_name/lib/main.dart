import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    title:'Named Routes Demo',
    // start the app with "/" named route. in this case, the app start on the first screen widget
    initialRoute: "/",
    routes:{
      // when navigating to the "/" route, build the FirstScreen widget
      '/' : (context) => FirstScreen(),
      // when navigating to the "/second" route, build the SecondScreen widget.
       '/second' : (context) => SecondScreen(),
    }
  ));
}

class FirstScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar:AppBar(
        title:Text("First Screen")
      ),
      body:Center(
        child:RaisedButton(
          child:Text("Launch Screen"),
          onPressed:(){
            Navigator.pushNamed(context,'/second');
          }
        )
      )
    );
  }
}

class SecondScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar:AppBar(
        title:Text("Second Screen")
      ),
      body:Center(
        child:RaisedButton(
          onPressed:(){
            Navigator.pop(context);
          },
          child:Text("Go Back")
        )
      )
    );
  }
}