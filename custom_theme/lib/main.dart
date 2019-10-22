import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
   final appName = "Custom Theme";
   return MaterialApp(
     title:appName,
     theme:ThemeData(
       brightness: Brightness.dark,
       primaryColor: Colors.lightGreen[700],
       accentColor: Colors.cyan[300],
       fontFamily:'Montserrat',
       textTheme: TextTheme(
         headline:TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
          title: TextStyle(fontSize: 30.0, fontStyle: FontStyle.italic),
          body1: TextStyle(fontSize: 14.0, fontFamily: 'Helvetica'),
       )
     ),
     home:MyHomePage(title:appName)
   );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  
  MyHomePage({Key key, @required this.title}) : super (key:key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar:AppBar(
        title:Text(title),
      ),
      body:Center(
        child:Container(
          color:Theme.of(context).accentColor,
          child:Text(
            'Text with a background color',
            style:Theme.of(context).textTheme.title,
          )
        )
      ),
      floatingActionButton: Theme(
        data:Theme.of(context).copyWith(
          colorScheme:Theme.of(context).colorScheme.copyWith(secondary:Colors.yellow[400]),

        ),
        child:FloatingActionButton(
          onPressed:null,
          child:Icon(Icons.add)
        )
      ),
    );
  }
}