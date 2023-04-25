import 'package:flutter/material.dart';
import 'package:project_1/ci_for_buttom.dart';
class DreamAdd extends StatelessWidget {
  const DreamAdd({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(120),
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/img/DreamLi.png'),
                  fit: BoxFit.fill
    )
    ),
      ),
      ),
    );
















  }
}