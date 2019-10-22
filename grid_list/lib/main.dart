import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    final title = "Grid List";

    return MaterialApp(
      title:title,
      home:Scaffold(
        appBar:AppBar(title:Text(title)),
          body:GridView.count(
          // create a grid with 2 columns, If you change the scrollDirection to
          // horizontal, this produce 2 rows
          crossAxisCount: 2,
          // generate 100 widget that display their index in the list
          children:List.generate(100,(index){
            return Center(
              child:Text(
                'Item $index',
                style:Theme.of(context).textTheme.headline
              )
            );
          })
        )
      )
    );
  }
}

