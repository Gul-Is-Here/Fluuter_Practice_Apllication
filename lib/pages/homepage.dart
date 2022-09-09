import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../drawer.dart';
class HomePage extends StatefulWidget{
  const HomePage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  final nameController = TextEditingController();
    var myText = 'Change Me';
var url= 'ht';
var data;

  @override
  void initState(){
    super.initState();
    getData();
  }
  getData() async{
   var res = await http.get(Uri.parse(url));
   data= jsonDecode(res.body);
  }
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: const Text (' My App'),
    ),
    body: Padding(
      padding: const EdgeInsets.all(20),
      child:data != null
      ?const SingleChildScrollView(child:Card()):
     const Center(
      child: CircularProgressIndicator(),
      )
    ),
    drawer: const DrawerMethod(),
    floatingActionButton: FloatingActionButton(
     onPressed: (){
     },
     child: const Icon(Icons.refresh), ),
     floatingActionButtonLocation: FloatingActionButtonLocation.miniEndFloat
    );
  }
}

