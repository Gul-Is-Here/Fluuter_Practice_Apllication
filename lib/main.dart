import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    title: 'Flutter App',
    home:MyApp() ,
  ));
}
class MyApp extends StatefulWidget{
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
    // ignore: unused_field
TextEditingController _nameController = TextEditingController();
    var myText = 'Change Me';
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: const Text (' My App'),
    ),
    body: SingleChildScrollView(
      child: Align(
        alignment: Alignment.topCenter,
        child: Container(
          padding: const EdgeInsets.all(20),
          width: MediaQuery.of(context).size.width,
          height:MediaQuery.of(context).size.height,
          // color: Colors.amber,
          child: Card(
            elevation: 10,
            child:Column(
              children: <Widget>[
                Image.asset('assets/images/laptop.png',
                fit:BoxFit.cover),
               const SizedBox(
                height: 20,
                ),
                Text(
                  myText,
                style:  TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                const SizedBox(
                  height: 20,
                  ),
              const Padding(
                  padding: EdgeInsets.all(8.0),
                  child:
                   TextField(
                    textInputAction: TextInputAction.done ,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                  hintText: 'You wanna see Magic then Hit',
                  labelText: 'Name',
                  border: OutlineInputBorder(
                  borderSide: BorderSide(
                  color: Colors.amber,
                         )
                       ),
                     ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    ),
    drawer: Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        // ignore: prefer_const_literals_to_create_immutables
        children: <Widget>[
        UserAccountsDrawerHeader(accountName: Text('Gul Faraz Ahmed',),
           accountEmail: Text('gulfarazahmed58@gmail.com'),
           currentAccountPicture: CircleAvatar(backgroundImage:
            AssetImage('assets/images/waiting.png'),),
           ),
           
            ListTile(
            leading: Icon(Icons.person),
            title: Text('Account'),
            subtitle: Text('Personal'),
            trailing: Icon(Icons.edit),
           ),
            ListTile(
            leading: Icon(Icons.email),
            title: Text('Email'),
            subtitle: Text('Personal'),
            trailing: Icon(Icons.send),)
                   ],
      ),
    ),
    floatingActionButton: FloatingActionButton(
     onPressed: (){
      setState(() {
        myText=_nameController.text;
      });
     },
     child: const Icon(Icons.refresh), ),
     floatingActionButtonLocation: FloatingActionButtonLocation.miniEndFloat
    );
  }
}