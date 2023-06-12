import 'package:flutter/material.dart';
import 'package:project_1/pages/Dreams/dream_list_provider.dart';
import 'package:provider/provider.dart';
import 'package:project_1/pages/Dreams/Class.dart';
import 'package:getwidget/getwidget.dart';
import 'package:project_1/pages/CategoryDetails.dart';

class categories extends StatefulWidget {
  const categories({Key? key}) : super(key: key);

  @override
  State<categories> createState() => _categoriesState();
}


class _categoriesState extends State<categories> {
  int _selectedIndex = 1;



  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      switch (_selectedIndex) {
        case 0:
          Navigator.pushNamedAndRemoveUntil(
              context, '/review', (route) => false);
          break;
        case 1:
          Navigator.pushNamedAndRemoveUntil(
              context, '/categories', (route) => false);
          break;

        case 2:
          Navigator.pushNamedAndRemoveUntil(
              context, '/DreamsAll', (route) => false);
          break;
        case 3:
          Navigator.pushNamedAndRemoveUntil(
              context, '/settings', (route) => false);
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    DreamListProvider dreamListProvider =
      Provider.of<DreamListProvider>(context);
    List<dreamAdd> dreamList = dreamListProvider.dreamList;

    List<String> uniqueCategories = dreamList
        .map((dream) => dream.categoryDream)
        .toSet()
        .toList();

    return Scaffold(
      appBar:AppBar(

        //Задний фон
        backgroundColor: Colors.white,

        //Титульный текст со стилями
        title: Center(
          child: Text(
            'Категории',
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

      body: SafeArea(
        child: SingleChildScrollView(
          child:Center(
              child: Container(
                decoration: BoxDecoration(color: Colors.white),
                width: MediaQuery.of(context).size.width - 0,
                height: MediaQuery.of(context).size.height - 170,
                child: ListView.builder(
                    itemCount: uniqueCategories.length,
                    itemBuilder: (BuildContext context, int index){
                      return Dismissible(
                        key: Key(uniqueCategories[uniqueCategories.length - index - 1]),
                        child: GestureDetector(
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => CategoryDetails(category: uniqueCategories[uniqueCategories.length - index - 1]),
                              ),
                            );
                          },
                          child:
                          GFCard(
                            boxFit: BoxFit.cover,
                            titlePosition: GFPosition.start,
                            title: GFListTile(
                              titleText: uniqueCategories[uniqueCategories.length - index - 1],

                            ),
                          ),
                        ),
                      );
                    }
                ),
              )

          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(

        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.map_outlined,
                size: 25,
                color: Colors.black
            ),
            label: 'Обзор',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.widgets_outlined,
                size: 25,
                color: Colors.black
            ),
            label: 'Категории',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.star_outline,
              size: 25,
              color: Colors.black,
            ),
            label: 'Мои желания',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings_outlined,
              size: 25,
              color: Colors.black,
            ),
            label: 'Настройки',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color.fromRGBO (139, 8, 201, 1),
        onTap: _onItemTapped,
      ),


    );
  }
}

