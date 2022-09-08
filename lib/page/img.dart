import 'package:flutter/material.dart';
class Img extends StatelessWidget {
  const Img({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset('assets/images/laptop.png', fit: BoxFit.cover, color: Colors.black.withOpacity(0.3),colorBlendMode: BlendMode.darken,);
  }
}