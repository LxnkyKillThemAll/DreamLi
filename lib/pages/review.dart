import 'package:flutter/material.dart';
import 'package:image_downloader/image_downloader.dart';

class review extends StatefulWidget {
  const review({Key? key}) : super(key: key);

  @override
  State<review> createState() => _reviewState();
}


class _dreamReview {

  late int idDream;
  late String nameDream;
  late var urlDream;

  _dreamReview(idDream,nameDream,urlDream){
  this.idDream = idDream;
  this.nameDream = nameDream;
  this.urlDream = urlDream;
  }
}




class _reviewState extends State<review> {
  int _selectedIndex = 0;
  @override



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

  var _dreamOne = _dreamReview(1,"Tatto","https://ekaterinburg.tattoo.firmika.ru/data/texts_img/3967/8a98f2dd0583b9685c682e78abfd729c.jpg");
  var _dreamTwo = _dreamReview(2,"Travel","censored");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(

        //Задний фон
        backgroundColor: Colors.white,

        //Титульный текст со стилями
        title: Center(
          child: Text(
            'Обзор',
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
        child:Center(
          child: Column(
            children: [
              Card(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(_dreamOne.nameDream),
                    CircleAvatar(
                    backgroundImage: AssetImage("assets/img/FirstDream.png"),
                      maxRadius: 45.0,
                   )
              ]
          )
        ),
              Card(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(_dreamTwo.nameDream),
                      CircleAvatar(
                        backgroundImage: AssetImage("assets/img/SecondDream.png"),
                        maxRadius: 45.0,
                      )
                    ]
                )
            ),
            ]
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