import 'package:flutter/material.dart';

class LoginOptions extends StatelessWidget {
  const LoginOptions({super.key, required this.imageUrl});
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    var sizeOfMyScreen = MediaQuery.of(context).size;
    double heightOfMyScreen = sizeOfMyScreen.height;
    double widthOfMyScreen = sizeOfMyScreen.width;
    double widthOfTextFormField = widthOfMyScreen * 0.6;
    return Container(
        height: heightOfMyScreen * 0.07,
        width: widthOfMyScreen * 0.1,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
                image: NetworkImage(imageUrl), fit: BoxFit.fitWidth)));
  }
}
