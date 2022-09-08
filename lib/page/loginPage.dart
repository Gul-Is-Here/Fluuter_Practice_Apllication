// ignore: file_names
import 'package:flutter/material.dart';
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
      autofocus: false,
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
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
      ),
    );
    final passwordField= TextFormField(
      autofocus: true,
      controller: passwordController,
      decoration:  InputDecoration(hintText: 'Password',
      prefixIcon: const Icon(Icons.password),
      contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
      border:  OutlineInputBorder(borderRadius: BorderRadius.circular(10))
       ),
    );
    final loginButton = Material(
  elevation: 5,
  borderRadius: BorderRadius.circular(10),
  child: const MaterialButton(onPressed: null,
  child: Text('Sign in',style:
 TextStyle(color: Colors.black, fontWeight: FontWeight.bold,),textAlign: TextAlign.center, ),));
    
    
    return Scaffold( appBar: AppBar(title: Text('My App'),
    ),
    
    body:Stack(
      fit: StackFit.expand,
      children: [
        Image.asset('assets/images/laptop.png', fit: BoxFit.cover, color: Colors.black.withOpacity(0.3),colorBlendMode: BlendMode.darken,),
        SingleChildScrollView(

          child: Align(
            alignment: Alignment.center,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height/2,
              padding: EdgeInsets.all(10),
              
              child: Card(
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