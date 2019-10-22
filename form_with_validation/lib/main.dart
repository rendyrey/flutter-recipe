import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    final appTitle = 'Form Validation Demo';

    return MaterialApp(
      title:appTitle,
      home:Scaffold(
        appBar:AppBar(
          title:Text(appTitle)
        ),
        body:MyCustomForm()
      )
    );
  }
}

// create a form widget
class MyCustomForm extends StatefulWidget{
  @override
  // atau bisa kayak gini
  // MyCustomFormState createState(){
  //   return MyCustomFormState();
  // }

  MyCustomFormState createState() => MyCustomFormState();
}

// create a corresponding state class
// this class holds data related to form
class MyCustomFormState extends State<MyCustomForm>{
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context){
    return Form(
      key:_formKey,
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            validator:(value){
              if(value.isEmpty){
                return 'Please enter some text';
              }
              return null;
            }
          ),
          Padding(
            padding:const EdgeInsets.symmetric(vertical: 16),
            child:RaisedButton(
              onPressed: (){
                // validate returns true if the form is valid
                // otherwise
                if(_formKey.currentState.validate()){
                  Scaffold.of(context).showSnackBar(
                    SnackBar(content:Text('Processing Data...'))
                  );
                }
              },
              child:Text('Submit')
            )
          )
        ],
      )
    );
  }
}