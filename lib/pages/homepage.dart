import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:my_applicaion/utils/constants.dart';
import '../widgets/drawer.dart';
import 'dart:convert';
class HomePageFB extends StatefulWidget{
  const HomePageFB({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePageFB> {
  final nameController = TextEditingController();
    var myText = 'Change Me';
var url= 'https://jsonplaceholder.typicode.com/photos';
// ignore: prefer_typing_uninitialized_variables
var data;

  @override
  void initState(){
    super.initState();
    getData();
  }
  Future getData() async{
   var res = await http.get(Uri.parse(url));
   data= jsonDecode(res.body);
   setState(() {
     
   });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: const Text (' My App'),
      actions: [IconButton(onPressed: (){
        Constants.prefs.setBool('loggedIn', false);
      Navigator.pushReplacementNamed(context, '/login');
      }, icon: Icon(Icons.exit_to_app))],
    ),
    body: Padding(
      padding: const EdgeInsets.all(20),
      child:data != null
      ?ListView.builder(itemBuilder: (context, index){
        return ListTile(
          contentPadding: EdgeInsets.all(5),
          title: Text(data[index]['title']),
          leading: Image.network(data[index]['url']),
        );
      }):
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

