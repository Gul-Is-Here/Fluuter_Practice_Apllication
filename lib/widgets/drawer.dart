import 'package:flutter/material.dart';
class DrawerMethod extends StatelessWidget {
  const DrawerMethod({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        // ignore: prefer_const_literals_to_create_immutables
        children: <Widget>[
        const UserAccountsDrawerHeader(accountName: Text('Gul Faraz Ahmed',),
           accountEmail: Text('gulfarazahmed58@gmail.com'),
           currentAccountPicture: CircleAvatar(backgroundImage:
            AssetImage('assets/images/waiting.png'),),
           ),
           
            const ListTile(
            leading: Icon(Icons.person),
            title: Text('Account'),
            subtitle: Text('Personal'),
            trailing: Icon(Icons.edit),
           ),
            const ListTile(
            leading: Icon(Icons.email),
            title: Text('Email'),
            subtitle: Text('Personal'),
            trailing: Icon(Icons.send),)
                   ],
      ),
    );
  }
}