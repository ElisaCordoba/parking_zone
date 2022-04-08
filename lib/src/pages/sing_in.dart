import 'package:flutter/material.dart';
import 'package:parking_zone/src/widgets/icons_container.dart';
import 'package:parking_zone/src/widgets/login_form.dart';

class SingIn extends StatefulWidget {
  const SingIn({ Key? key }) : super(key: key);

  @override
  _SingInState createState() => _SingInState();
}

class _SingInState extends State<SingIn> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: <Color> [
                const Color(0xff0F0110),
                const Color(0x00ef5350),],
              begin: Alignment.topRight)
          ),
          child: ListView(
            padding: EdgeInsets.symmetric(
              horizontal: 40.0,
              vertical: 200
            ),
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children:<Widget>[
                IconContainer(
                  url:'images/carroRojo2.png'
                ),
                Text(
                  'PARKING ZONE',
                  style: TextStyle(
                    fontFamily: 'FredokaOne',
                    fontSize: 30.0,
                  ),
                ),
                 Text(
                  'Inicio de sesión',
                  style: TextStyle(
                    fontFamily: 'FredokaOne',
                    fontSize: 26.0 
                  ),
                ),
                Divider(
                  height: 22.0,),
                LoginForm(),
                ]
              ) 
            ],
            ),
        ),)
      
    );
  }
}