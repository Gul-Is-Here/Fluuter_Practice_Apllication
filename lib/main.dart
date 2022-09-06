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
    body: Align(
      child: Container(
        color: Color.fromARGB(219, 220, 180, 59),
          width: MediaQuery.of(context).size.width,
           height:MediaQuery.of(context).size.height/2,
        child: Column(
         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,

          children: [
            Container(
             padding: EdgeInsets.all(15),
           width: 100,
           height: 100,
             color: Colors.green,
            ),
             Container(
             padding: EdgeInsets.all(15),
             width: 100,
             height: 100,
             color: Colors.yellow,
            ),
             Container(
             padding: EdgeInsets.all(15),
             width: 100,
             height: 100,
             color: Colors.red,
            ),
          ],
        ),
      ),
    ),
    );
  }
}