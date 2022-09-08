import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    title: 'Flutter App',
    home:MyApp() ,
  ));
}
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