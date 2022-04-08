import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:parking_zone/src/pages/sing_in.dart';
import 'package:parking_zone/src/pages/sing_up.dart';
import 'package:parking_zone/src/widgets/icons_container.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                  'BIENVENIDO',
                  style: TextStyle(
                    fontFamily: 'FredokaOne',
                    fontSize: 32.0,
                  ),
                  ),
                Text(
                  'Parking Zone',
                  style: TextStyle(
                    fontFamily: 'FredokaOne',
                    fontSize: 18.0,
                  ),
                ),
                Divider(
                  height: 20.0,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 60.0,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.red,
                      primary: Colors.white,
                    textStyle: const TextStyle(
                      fontSize: 20,
                      fontFamily: 'FredokaOne'
                      ),
                  ),
                  onPressed: () {
                    final route= MaterialPageRoute(
                      builder: (context)=> SingIn()
                    );
                    Navigator.push(context, route);
                  },
                  child: const Text('Iniciar Sesión'),
                  ),
                ),
                Divider(
                  height: 20.0,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 60.0,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.black,
                      primary: Colors.white,
                    textStyle: const TextStyle(
                      fontSize: 20,
                      fontFamily: 'FredokaOne'
                      ),
                  ),
                  onPressed: () {
                      final route= MaterialPageRoute(
                      builder: (context)=> SingUp(),
                    );
                    Navigator.push(context, route);
                  },
                  child: const Text('Registrarse'),
                  ),
                )
                ]
              )
              
            ],),


        ),)
    );
  }
}