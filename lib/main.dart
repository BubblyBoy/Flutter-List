import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
@override

Widget build (BuildContext context){
  return new MaterialApp(
    title: 'flutter first project',
    theme: new ThemeData(
      primarySwatch:Colors.blue
    ),
    home:MyHomePage(),
  );
}
}

class MyHomePage extends StatefulWidget
{
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>{
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: AppBar(
        title:new Center(
          child: new Text('Yunus ali', style: new TextStyle(fontSize:20 ),),
        ), 
    ),
    body: new _Mylist()
    );
  }
}
class _Mylist extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      padding: EdgeInsets.all(4.0),
      itemBuilder: (context,i){
        return new ListTile(
          title: new Text('Yunu Ali', style: new TextStyle(fontSize: 20 , fontStyle: FontStyle.italic, color: Colors.red),),
          subtitle: new Text('is online', style: new TextStyle( color: Colors.green),),
          leading: const Icon(Icons.face),
          trailing: new RaisedButton(
            child: new Text('remove'),
            onPressed: (){
              deleteDiaog(context).then((Value){
                print('value is $Value');
              });
            },
          )

        );
      },
    );
  }
}

Future<bool> deleteDiaog(BuildContext context){
  return showDialog(
    barrierDismissible: false,
    context: context,
    builder:(BuildContext context){
      return new AlertDialog(
        title: new Text('Are you sure'),
        actions: <Widget>[
          new FlatButton(
            child: new Text('yes'),
            onPressed: (){
              Navigator.of(context).pop(true);
            },
          ),
          new FlatButton(
            child: new Text('No'),
            onPressed: (){
              Navigator.of(context).pop(false);
            },
          )
        ],

      );
    }
  );
}