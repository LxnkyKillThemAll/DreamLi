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
         preferredSize: Size.fromHeight(150),
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


      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),

            Text("Название"),
            SizedBox(
              height: 20,
            ),
            TextField(
                cursorColor: Colors.black,
                style: TextStyle(
                    color: Colors.white
                ),
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromRGBO(139, 8, 201, 1),
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(50)
                    ),
                    hintStyle: TextStyle(color: Colors.white),
                    hintText: "Введите название мечты")
            ),
            SizedBox(
              height: 40,
            ),
            Text("Описание"),
            SizedBox(
              height: 20,
            ),
            TextField(
                cursorColor: Colors.black,
                style: TextStyle(
                    color: Colors.white
                ),
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromRGBO(139, 8, 201, 1),
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(50)
                    ),
                    hintStyle: TextStyle(color: Colors.white),
                    hintText: "Добавьте описание")
            ),
            SizedBox(
              height: 40,
            ),
            Text("Шаги"),
            SizedBox(
              height: 20,
            ),
            TextField(
                maxLines: 5,
                cursorColor: Colors.black,
                style: TextStyle(
                    color: Colors.white
                ),
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromRGBO(139, 8, 201, 1),
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(50)
                    ),
                    hintStyle: TextStyle(color: Colors.white),
                    hintText: "Добавьте шаги для достижения мечты\n1.Следить за питанием\n2.больше двигаться\n...")

            ),
            SizedBox(
              height: 40,
            ),
            Text("Категория"),
            SizedBox(
              height: 20,
            ),

            TextField(
                cursorColor: Colors.black,
                style: TextStyle(
                    color: Colors.white
                ),
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromRGBO(139, 8, 201, 1),
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(50)
                    ),
                    hintStyle: TextStyle(color: Colors.white),
                    hintText: "Введите категорию вашей мечты")
            ),
            SizedBox(
              height: 20,
            ),
            TextButton(onPressed: (){},
              child: Text("Добавить"),
              style: TextButton.styleFrom(
                  foregroundColor: Colors.white,
                backgroundColor: Color.fromRGBO(139, 8, 201, 1)
              ) ,
            )
          ]
    ),
      )






    );
  }
}









