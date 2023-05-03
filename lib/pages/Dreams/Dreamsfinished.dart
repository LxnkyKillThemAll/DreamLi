import 'package:flutter/material.dart';



class Dreamsfinished extends StatefulWidget {
  const Dreamsfinished({Key? key}) : super(key: key);

  @override
  State<Dreamsfinished> createState() => _DreamsfinishedState();
}
class _DreamsfinishedState extends State<Dreamsfinished> {



  int _selectedIndex = 2;

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

      appBar:AppBar(

        //Задний фон
        backgroundColor: Colors.white,

        //Титульный текст со стилями
        title: Center(
          child: Text(
            'Мои желания',
            style:TextStyle(
                fontSize: 30,
                color: Colors.black,
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



      body:Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [

              Container(
                decoration: BoxDecoration(
                    color:Color.fromRGBO(196, 127, 235, 1),
                    borderRadius: BorderRadius.circular(20)
                ),
                width: 100,
                height: 35,

                child: TextButton(onPressed: (){
                  Navigator.pushReplacementNamed(context, "/DreamsAll");
                },
                  child: Text(
                    'Все',
                    style:TextStyle(
                        fontSize: 13,
                        color: Colors.black,
                        fontFamily: 'Forum-Regular'
                    ),
                  ),
                ),


              ),



              Container(
                decoration: BoxDecoration(
                    color:Color.fromRGBO(196, 127, 235, 1),
                    borderRadius: BorderRadius.circular(20)
                ),
                width: 100,
                height: 35,

                child: TextButton(onPressed: (){
                  Navigator.pushReplacementNamed(context, "/Dreamsinprogress");
                },
                  child: Text(
                    'В процессе',
                    style:TextStyle(
                        fontSize: 13,
                        color: Colors.black,
                        fontFamily: 'Forum-Regular'
                    ),
                  ),
                ),



              ),

              Container(
                decoration: BoxDecoration(
                    color:Color.fromRGBO(196, 127, 235, 1),
                    borderRadius: BorderRadius.circular(20)
                ),
                width: 100,
                height: 35,

                child: TextButton(onPressed: (){
                  Navigator.pushReplacementNamed(context, "/Dreamsfinished");
                },
                  child: Text(
                    'Завершенные',
                    style:TextStyle(
                        fontSize: 13,
                        color: Colors.black,
                        fontFamily: 'Forum-Regular'
                    ),
                  ),
                ),


              ),
            ],
          ),
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









