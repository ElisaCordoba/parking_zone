import 'package:flutter/material.dart';
import 'package:parking_zone/src/pages/sing_up.dart';
import 'package:parking_zone/src/widgets/input_text.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({ Key? key }) : super(key: key);

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  GlobalKey <FormState> _formkey =GlobalKey();
  String _email= '';
  String _password='';
  _submit(){
    final isLogin= _formkey.currentState!.validate();
    print('is login From is $isLogin');

  }
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formkey,
      child: Column(
        children :<Widget> [
          InputText(
            hint: 'Email Address',
            label: 'Email Address',
            keyboard: TextInputType.emailAddress,
            icono: Icon(Icons.mail_outline),
            onChange: (data){
              data=_email;
            },
            validator: (data) {
              if(!data.contains('@')){
                return 'Invalid email';
              }
              return '';
            },

          ),
          Divider(
            height: 15.0,
          ),
          InputText(
            hint: 'Password',
            label: 'Password',
            icono: Icon(Icons.lock_outline),
            keyboard: TextInputType.visiblePassword,
            obscure: true,
            onChange: (data){
              data=_password;
            }, 
            validator: (data){
              if(data.trim().length==0){
                return 'Invalid Password';
              }
              return '';
            }
          ),
          Divider(
            height: 15.0,
          ),
          SizedBox(
            width: double.infinity,
            child: TextButton(
                      style: TextButton.styleFrom(
                      backgroundColor: Colors.black,
                      primary: Colors.white,
                    textStyle: const TextStyle(
                      fontSize: 20,
                      fontFamily: 'FredokaOne'
                      ),
                  ),
              onPressed:(){
                _submit();
              },
              child:const Text ('Ingresar'),
              )
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Nuevo en Parking Zone',
                style: TextStyle(
                  fontFamily: 'FredokaOne'
                ),
              ),
              TextButton(
                style: TextButton.styleFrom(
                  primary: Colors.lightBlue
                ),
                onPressed: (){
                   final route= MaterialPageRoute(
                      builder: (context)=> SingUp(),
                    );
                    Navigator.push(context, route);
                },
                child: const Text('Registrate'))
            ],
          )
        ],

      ),
    );
  }
}