import 'package:flutter/material.dart';
import 'package:project_1/pages/Dreams/dream_list_provider.dart';
import 'package:provider/provider.dart';
import 'package:project_1/pages/Dreams/Class.dart';
import 'package:project_1/pages/Dreams/DreamDetails.dart';

class CategoryDetails extends StatelessWidget {
  final String category;

  CategoryDetails({required this.category});
  void navigateToDreamDetails(BuildContext context, dreamAdd dream) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => DreamDetails(dream)),
    );
  }
  @override
  Widget build(BuildContext context) {
    DreamListProvider dreamListProvider =
      Provider.of<DreamListProvider>(context);
    List<dreamAdd> dreamList = dreamListProvider.dreamList;
    List<dreamAdd> filteredList = dreamList.where((dream) => dream.categoryDream == category).toList();
    return Scaffold(
      appBar:AppBar(

        //Задний фон
        backgroundColor: Colors.white,

        //Титульный текст со стилями
        title: Center(
          child: Text(
            category,
            style:TextStyle(
                fontSize: 30,
                color: Color.fromRGBO(139, 8, 201, 1),
                fontFamily: 'Forum-Regular'
            ),
          ),
        ),

        //Работа с тенями
        elevation: 0.0,
        shadowColor: Colors.transparent,
        //Контейнер и работа с его границами
        flexibleSpace: Container(
          decoration: BoxDecoration(
            border: Border(
              top: BorderSide(
                color: Color.fromRGBO(139, 8, 201, 1),
                width: 1.7,
              ),
              bottom: BorderSide(
                color: Color.fromRGBO(139, 8, 201, 1),
                width: 1.7,
              ),
            ),
          ),
        ),
      ),
      body: Column(
        children: [

          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SingleChildScrollView(
                child: Container(
                    decoration: BoxDecoration(color: Colors.white),
                    width: MediaQuery.of(context).size.width - 80,
                    height: MediaQuery.of(context).size.height - 195,
                    child: ListView.builder(
                        itemCount: filteredList.length,
                        itemBuilder: (BuildContext context, int index) {
                          return  Card(
                            child: ListTile(
                              title: Text((filteredList[filteredList.length - index-1]).nameDream),
                              trailing: IconButton(
                                icon: Icon(
                                  Icons.menu,
                                  color: Color.fromRGBO(139, 8, 201, 1),
                                ),
                                onPressed: () {
                                  navigateToDreamDetails(
                                      context, filteredList[filteredList.length - index-1]);
                                },
                              ),
                            ),
                          );


                        })),
              ),
            ],
          )
        ],
      ),
    );
  }
}