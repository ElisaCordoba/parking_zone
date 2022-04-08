import 'package:flutter/material.dart';
import 'package:parking_zone/src/widgets/icons_container.dart';
import 'package:parking_zone/src/widgets/logout_form.dart';

class SingUp extends StatefulWidget {
  const SingUp({ Key? key }) : super(key: key);

  @override
  _SingUpState createState() => _SingUpState();
}

class _SingUpState extends State<SingUp> {
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
              vertical: 100
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
                    fontSize: 32.0,
                  ),
                  ),
                Text(
                  'Registrate',
                  style: TextStyle(
                    fontFamily: 'FredokaOne',
                    fontSize: 26.0 
                  ),
                ),
                Divider(
                  height: 20.0,),
                LogoutForm(), 
                Divider(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    FloatingActionButton(
                      backgroundColor: Colors.red[900],
                      child: Icon(Icons.settings_backup_restore_outlined),
                      onPressed:(){
                      Navigator.pop(context);
                    })

                  ],

                )
                ]
              )
              
            ],),


        ),)
    );
  }
}