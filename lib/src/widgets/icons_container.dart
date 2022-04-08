import 'package:flutter/material.dart';

class IconContainer extends StatelessWidget {
  final String url;

 
  const IconContainer({ Key? key, required this.url }) : 
  assert (url !=null),
  super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200.0,
      height: 200.0,

      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        image: DecorationImage(
          fit:BoxFit.cover,
          image: AssetImage(this.url),
          ) ,
      // child: CircleAvatar(
      //   radius: 100.0,
      //   backgroundColor: Colors.transparent,
      //   backgroundImage:AssetImage(this.url),
      // )
    )
    );
  }
}