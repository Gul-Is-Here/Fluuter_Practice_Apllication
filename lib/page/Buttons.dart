// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
class MyWidget extends StatefulWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {

 
    return Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.all(10),
        
        child: Card(
          elevation: 5,
          child: Column(children: [
            Image.asset('assets/images/laptop.png',
             fit: BoxFit.cover,
            color: Colors.black.withOpacity(0.3),),

        
          ],),
        ),
      );
  }
}