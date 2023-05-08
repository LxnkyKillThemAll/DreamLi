import 'package:flutter/material.dart';



class settings extends StatefulWidget {
  const settings({Key? key}) : super(key: key);

  @override
  State<settings> createState() => _settingsState();
}
class _settingsState extends State<settings> {
  int _selectedIndex = 3;


  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      switch(_selectedIndex){
        case 0:
          Navigator.pushNamedAndRemoveUntil(context, '/review',(route) => false);
          break;
        case 1:
          Navigator.pushNamedAndRemoveUntil(context, '/categories',(route) => false);
          break;
        case 2:
          Navigator.pushNamedAndRemoveUntil(context, '/DreamsAll',(route) => false);
          break;
        case 3:
          Navigator.pushNamedAndRemoveUntil(context, '/settings',(route) => false);
          break;
      }

    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [

          Padding(
            padding: EdgeInsets.all(15.0),
            child: CircleAvatar(
              backgroundColor: Colors.black,
              radius: 42,
            ),
          ),



          Padding(
            padding: EdgeInsets.all(15.0),
              child: Text("Ваше имя \nВаша почта"))
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









