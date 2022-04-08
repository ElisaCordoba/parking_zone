import 'package:flutter/material.dart';


class InputText extends StatelessWidget {
  final String label;
  final String hint;
  final Icon icono;
  final TextInputType keyboard;
  final bool obscure;
  final void Function(String data) onChange;
  final String Function(String data) validator;
  const InputText({ Key? key,
        this.label='',
        this.hint='',
        required this.icono,
        this.keyboard=TextInputType.text,
        this.obscure =false,
        required this.onChange,
        required this.validator,
        
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        keyboardType: this.keyboard,
        obscureText: this.obscure,
        onChanged: this.onChange,
        decoration: InputDecoration(
          hintText: this.hint,
          labelText: this.label,
          labelStyle: TextStyle(
            color: Colors.black,
            fontSize:15.0 ,
          ),
          prefixIcon: this.icono,
          //border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0))
        ),
      ),
      
    );
  }
}