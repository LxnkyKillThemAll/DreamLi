import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

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


void _reviewAdd(nameDream){

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

  List dreams = [_dreamReview(1,"Tatto","assets/img/FirstDream.png"), _dreamReview(2,"Travel","assets/img/SecondDream.png")]; //non-empty on create





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
        child: SingleChildScrollView(
        child:Center(
          child: Column(
            children: [
        GestureDetector(
            onTap: (){
              Navigator.pushReplacementNamed(context, "/DreamsAdd");

            },
            child:
              GFCard(
                boxFit: BoxFit.cover,
                titlePosition: GFPosition.start,
                image: Image.asset(
                  dreams[0].urlDream,
                  height: MediaQuery.of(context).size.height * 0.3,
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.cover,
                ),
                showImage: true,
                title: GFListTile(
                  titleText: dreams[0].nameDream,
                  subTitleText: 'Набить тату',

                ),
              ),
            ),
          GestureDetector(
              onTap: (){
                Navigator.pushReplacementNamed(context, "/DreamsAdd");

              },
              child:
              GFCard(
                boxFit: BoxFit.cover,
                titlePosition: GFPosition.start,
                image: Image.asset(
                  dreams[1].urlDream,
                  height: MediaQuery.of(context).size.height * 0.3,
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.cover,
                ),
                showImage: true,
                title: GFListTile(
                  titleText: dreams[1].nameDream,
                  subTitleText: 'Отправиться в интересное путешествие на пару деньков',
                ),
              ),
          )
            ]
),
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