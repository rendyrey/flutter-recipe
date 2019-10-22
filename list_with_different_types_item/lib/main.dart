import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp(
    items:List<ListItem>.generate(
      1000,
      (i) => i % 6 == 0 ? HeadingItem("Heading $i") : MessageItem("Sender $i", "Message body $i"),
    )
  ));
}

class MyApp extends StatelessWidget {
  final List<ListItem> items;

  MyApp({Key key,@required this.items}) : super(key:key);

  @override
  Widget build(BuildContext context){
    final title = "Mixed List";
    return MaterialApp(
      title:title,
      home:Scaffold(
        appBar:AppBar(
          title:Text(title)
        ),
        body:ListView.builder(
          // let the listview know how many item it needs mto build
          itemCount:items.length,
          // Provide a builder function. This is where the magic happens.
          // Convert each item into a widget based on the type of item it is. 
          itemBuilder:(context,index){
            final item = items[index];
            if(item is HeadingItem){
              return ListTile(
                title:Text(item.heading,style:Theme.of(context).textTheme.headline)
              );
            }else if(item is MessageItem){
              return ListTile(
                title:Text(item.sender),
                subtitle:Text(item.body)
              );
            }
          }
        )
      )
    );
  }
}

// the base class for the different types of items the list can contain
abstract class ListItem{}

// a listitem that contains data to display a heading.
class HeadingItem implements ListItem {
  final String heading;
  HeadingItem(this.heading);
}

// a listitem that contains data to display a message.
class MessageItem implements ListItem {
  final String sender;
  final String body;
  MessageItem(this.sender,this.body);
}

