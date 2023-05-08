
import 'package:flutter/material.dart';

class Regestry extends StatelessWidget {
  const Regestry({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(

        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/img/Регистрация.png'),
            fit: BoxFit.fill
          )
        ),

        child: Container(

          alignment: Alignment(0,0.12),

            child: ElevatedButton(onPressed: (){
              Navigator.pushReplacementNamed(context, '/review');
            }, child: Text('Войти')),
          ),

        ),











      );
  }
}