import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    title: 'Flutter App',
    home:MyApp() ,
  ));
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: Text (' My App'),
    ),
    body: Container(child:
     Center(child:
      Text(
        ' Hi Flutter'
        ),),),
    );
  }
}