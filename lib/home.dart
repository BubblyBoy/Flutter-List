import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
 @override

 Widget build(BuildContext context){
   return new MaterialApp(
     title: 'yunu ali',
     theme: ThemeData(
       primarySwatch: Colors.amber
     ),
    home:Homepage(),
   );
 }
}

class Homepage extends StatefulWidget{

  _HomepageState createState() => new _HomepageState(); 
}

class _HomepageState extends State<Homepage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: new Text('yunus ali', style: new TextStyle(fontSize:20, fontStyle: FontStyle.italic) ),
      ),
      body:new ListView(
        children: <Widget>[
          new Text('yunus ali'),
          new Text('yunus ali'),
          new Text('yunus ali'),
        ],
      ) 
    );
  }

}