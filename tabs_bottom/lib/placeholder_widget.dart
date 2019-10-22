import 'package:flutter/material.dart';

class PlaceholderWidget extends StatelessWidget{
  // Color color;

  // // PlaceholderWidget({Key key, this.color}) : super(key: key);
  // PlaceholderWidget(Color color){
  //   this.color = color;
  // }

  //kalau tidak bisa berubah jadi kayak gini
  final Color color;
  PlaceholderWidget(this.color);

  @override 
  Widget build(BuildContext context){
    return Container( 
      color:color
    );
  }
}