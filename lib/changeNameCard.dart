import 'package:flutter/material.dart';
// ignore: camel_case_types
class ChangeNameCard extends StatelessWidget {
   ChangeNameCard({
    Key? key,
    required this.myText,
  }) : super(key: key);

  final String myText;
  final nameController=TextEditingController();

@override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Image.asset('assets/images/laptop.png',
        fit:BoxFit.cover),
       const SizedBox(
        height: 20,
        ),
        Text(
          myText,
        style:  const TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
        const SizedBox(
          height: 20,
          ),
       const Padding(
          padding:  EdgeInsets.all(8.0),
        child: TextField(
            // controller: nameController ,
          keyboardType: TextInputType.text,
          autofocus: false,
          decoration: InputDecoration(
          hintText: 'Type Here',
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
    );
  }
}

