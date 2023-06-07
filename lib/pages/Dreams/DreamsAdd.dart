import 'package:flutter/material.dart';
import 'package:project_1/pages/Dreams/DreamsAll.dart';
import 'package:project_1/pages/Dreams/Class.dart';

class DreamsAdd extends StatefulWidget {
  const DreamsAdd({Key? key}) : super(key: key);

  @override
  State<DreamsAdd> createState() => _DreamsAddState();
}

class _DreamsAddState extends State<DreamsAdd> {
  TextEditingController nameController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController stepsController = TextEditingController();
  TextEditingController categoryController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    descriptionController.dispose();
    stepsController.dispose();
    categoryController.dispose();
    super.dispose();
  }

  void addButtonPressed() {
    String name = nameController.text;
    String description = descriptionController.text;
    String steps = stepsController.text;
    String category = categoryController.text;
    bool flag = false;

    dreamAdd newdream = dreamAdd(name, description, steps, category, flag);

    Navigator.pop(context, newdream);
  }

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
          child: Column(children: [
            SizedBox(
              height: 10,
            ),
            Text("Название"),
            SizedBox(
              height: 20,
            ),
            TextField(
                controller: nameController,
                cursorColor: Colors.black,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromRGBO(139, 8, 201, 1),
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(50)),
                    hintStyle: TextStyle(color: Colors.white),
                    hintText: "Введите название мечты")),
            SizedBox(
              height: 40,
            ),
            Text("Описание"),
            SizedBox(
              height: 20,
            ),
            TextField(
                controller: descriptionController,
                cursorColor: Colors.black,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromRGBO(139, 8, 201, 1),
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(50)),
                    hintStyle: TextStyle(color: Colors.white),
                    hintText: "Добавьте описание")),
            SizedBox(
              height: 40,
            ),
            Text("Шаги"),
            SizedBox(
              height: 20,
            ),
            TextField(
                controller: stepsController,
                maxLines: 5,
                cursorColor: Colors.black,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromRGBO(139, 8, 201, 1),
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(50)),
                    hintStyle: TextStyle(color: Colors.white),
                    hintText:
                        "Добавьте шаги для достижения мечты\n1.Следить за питанием\n2.больше двигаться\n...")),
            SizedBox(
              height: 40,
            ),
            Text("Категория"),
            SizedBox(
              height: 20,
            ),
            TextField(
                controller: categoryController,
                cursorColor: Colors.black,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromRGBO(139, 8, 201, 1),
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(50)),
                    hintStyle: TextStyle(color: Colors.white),
                    hintText: "Введите категорию вашей мечты")),
            SizedBox(
              height: 20,
            ),
            TextButton(
              onPressed: addButtonPressed,
              child: Text("Добавить"),
              style: TextButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Color.fromRGBO(139, 8, 201, 1)),
            )
          ]),
        ));
  }
}
