import 'package:flutter/material.dart';


class review extends StatefulWidget {
  const review({Key? key}) : super(key: key);

  @override
  State<review> createState() => _reviewState();
}

class _reviewState extends State<review> {
  List DreamsAll = [];

  @override
  void initState() {
    super.initState();
    DreamsAll.addAll(["run", "jump", "swim"]);
  }


  int _selectedIndex = 0;


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
            'Обзор',
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  decoration: BoxDecoration(color: Colors.white60),
                  width: 530,
                  height: 650,
                  child: ListView.builder(
                      itemCount: DreamsAll.length,
                      itemBuilder: (BuildContext context, int index){
                        return Dismissible(
                          key: Key(DreamsAll[index]),
                          child: Card(
                            child: ListTile(
                              title: Text(DreamsAll[index]),
                              trailing: IconButton(
                                icon: Icon(
                                  Icons.menu,
                                  color: Color.fromRGBO(139, 8, 201, 1),
                                ),
                                onPressed: (){},
                              ),
                            ),
                          ),
                          onDismissed: (direction){
                            setState(() {
                              DreamsAll.removeAt(index);
                            });
                          },
                        );
                      }
                  )
              ),
            ],
          )
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
         selectedItemColor: Color.fromRGBO (139, 8, 201, 1),
         onTap: _onItemTapped,
       ),









    );
  }
}









