import 'package:flutter/material.dart';


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
    return Scaffold(
      appBar: AppBar(

        //Задний фон
        backgroundColor: Colors.white,


        //Работа с тенями
        elevation: 0.0,
        shadowColor: Colors.transparent,
        //Контейнер и работа с его границами
        flexibleSpace: Container(
          child:
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Категории',
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                  fontFamily: 'Forum-Regular'
              ),
            ),
          ),
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
        actions: [
          IconButton(onPressed: () {},
              icon: Icon(Icons.add_circle, size: 27,
                  color: Color.fromRGBO(139, 8, 201, 1)))
        ],
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
            icon: Icon(Icons.category_outlined,
                size: 25.2,
                color: Colors.black
            ),
            label: 'Категории',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.star_border,
              size: 16.64,
              color: Colors.black,
            ),
            label: 'Мои желания',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings_outlined,
              size: 25.2,
              color: Colors.black,
            ),
            label: 'Настройки',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color.fromRGBO (250, 255, 14, 1),
        onTap: _onItemTapped,
      ),


    );
  }
}

