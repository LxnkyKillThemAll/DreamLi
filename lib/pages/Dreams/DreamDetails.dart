import 'dart:html';

import 'package:flutter/material.dart';
import 'package:project_1/pages/Dreams/Class.dart';

class DreamDetails extends StatelessWidget {
  final dreamAdd dream;

  DreamDetails(this.dream);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(150),
          child: AppBar(
            flexibleSpace: ClipRRect(
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(50),
                  bottomLeft: Radius.circular(50)),
              child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/img/DreamLi.png"),
                        fit: BoxFit.fill)),
              ),
            ),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(50),
                    bottomLeft: Radius.circular(50))),
          ),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(children: [
              SizedBox(height: 15),
              Text(
                'Название:',
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                    fontFamily: 'Forum-Regular'),
              ),
              Container(
                margin: const EdgeInsets.all(15.0),
                padding: const EdgeInsets.all(7.0),
                decoration: BoxDecoration(
                    border: Border.all(color: Color.fromRGBO(139, 8, 201, 1))),
                child: Text(
                  '${dream.nameDream}',
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.black,
                      fontFamily: 'Forum-Regular'),
                ),
              ),
              SizedBox(height: 15),
              Text(
                'Описание:',
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                    fontFamily: 'Forum-Regular'),
              ),
              Container(
                margin: const EdgeInsets.all(15.0),
                padding: const EdgeInsets.all(7.0),
                decoration: BoxDecoration(
                    border: Border.all(color: Color.fromRGBO(139, 8, 201, 1))),
                child: Text(
                  '${dream.descriptionDream}',
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.black,
                      fontFamily: 'Forum-Regular'),
                ),
              ),
              SizedBox(height: 15),
              Text(
                'Шаги:',
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                    fontFamily: 'Forum-Regular'),
              ),
              Container(
                margin: const EdgeInsets.all(15.0),
                padding: const EdgeInsets.all(7.0),
                decoration: BoxDecoration(
                    border: Border.all(color: Color.fromRGBO(139, 8, 201, 1))),
                child: Text(
                  '${dream.stepsDream}',
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.black,
                      fontFamily: 'Forum-Regular'),
                ),
              ),
              SizedBox(height: 15),
              Text(
                'Категория:',
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                    fontFamily: 'Forum-Regular'),
              ),
              Container(
                margin: const EdgeInsets.all(15.0),
                padding: const EdgeInsets.all(7.0),
                decoration: BoxDecoration(
                    border: Border.all(color: Color.fromRGBO(139, 8, 201, 1))),
                child: Text(
                  '${dream.categoryDream}',
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.black,
                      fontFamily: 'Forum-Regular'),
                ),
              ),
              Text(
                'Выполнено?',
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                    fontFamily: 'Forum-Regular'),
              ),
              Container(
                margin: const EdgeInsets.all(15.0),
                padding: const EdgeInsets.all(7.0),
                decoration: BoxDecoration(
                    border: Border.all(color: Color.fromRGBO(139, 8, 201, 1))),
                child: Switch(
                    value: dream.flag ,
                    activeColor: Color.fromRGBO(139, 8, 201, 1),
                    onChanged:(bool value){
                      dream.flag = value;

                    }
                )
              ),
            ]),
          ),
        ));
  }
}
