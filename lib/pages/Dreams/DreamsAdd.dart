import 'package:flutter/material.dart';



class DreamsAdd extends StatefulWidget {
  const DreamsAdd({Key? key}) : super(key: key);

  @override
  State<DreamsAdd> createState() => _DreamsAddState();
}
class _DreamsAddState extends State<DreamsAdd> {
  String _name ="";
  String _description ="";
  String _steps ="";
  String _category ="";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(200),
        child: AppBar(
          flexibleSpace: ClipRRect(
            borderRadius: BorderRadius.only(bottomRight: Radius.circular(50), bottomLeft: Radius.circular(50)),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/img/DreamLi.png"),
                    fit: BoxFit.fill
                )
              ),
            ),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(bottomRight: Radius.circular(50), bottomLeft: Radius.circular(50))
          ),
        ),
      ),
      extendBodyBehindAppBar: true,






    );
  }
}









