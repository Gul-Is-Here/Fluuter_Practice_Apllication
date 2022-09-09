// ignore: file_names
import 'package:flutter/material.dart';
import '../utils/constants.dart';
import 'img.dart';
 class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final nameController= TextEditingController();
  final passwordController =TextEditingController();

  @override
  Widget build(BuildContext context) {
   final fNameTextField= TextFormField(
      autofocus: true,
      controller: nameController,
      keyboardType: TextInputType.name,
      onSaved: (newValue)  {
        nameController.text=newValue!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        
        prefixIcon: const Icon(Icons.person),
        contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: 'First Name',
        labelText: 'Name',hintStyle:const TextStyle(backgroundColor: Colors.white12),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
      ),
    );
    final passwordField= TextFormField(
      
      autofocus: false,
      controller: passwordController,
      decoration:  InputDecoration(hintText: 'Password',
      labelText: 'Password',
      prefixIcon: const Icon(Icons.password),
      contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
      border:  OutlineInputBorder(borderRadius: BorderRadius.circular(10))
       ),
    );
    final loginButton = Material(
  elevation: 5,
  color: Colors.amber,
  borderRadius: BorderRadius.circular(10),
  child: MaterialButton(onPressed: (){
    // Navigator.push(context, MaterialPageRoute(builder:
    //  (context)=>const HomePage()) );
    Constants.prefs.setBool('loggedIn', true);
    Navigator.pushReplacementNamed(context, "/login");
  },
  child: const Text('Sign in',style:
 TextStyle(color: Colors.black, fontWeight: FontWeight.bold,),textAlign: TextAlign.center, ),));
    
    
    return Scaffold( appBar: AppBar(title: const Text('My App'),
    ),
    
    body:Stack(
      fit: StackFit.expand,
      children: <Widget>[
        const Img(),
        Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(children: [
                  fNameTextField,
                 const SizedBox(height:20),
                 passwordField,
                 const SizedBox(height:20),
                 loginButton,
                 
                  
                ],),
              ),
            ),
          ),
        ),
      ],
    ),
    );
  }
}

