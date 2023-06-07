import 'package:flutter/material.dart';
import 'package:project_1/pages/Dreams/dream_list_provider.dart';
import 'package:project_1/pages/Dreams/DreamsAdd.dart';
import 'package:project_1/pages/Dreams/Class.dart';
import 'package:provider/provider.dart';
import 'package:project_1/pages/Dreams/DreamDetails.dart';

class DreamsAll extends StatefulWidget {
  const DreamsAll({Key? key}) : super(key: key);

  @override
  State<DreamsAll> createState() => _DreamsAllState();
}

class _DreamsAllState extends State<DreamsAll> {
  void navigateToDreamDetails(BuildContext context, dreamAdd dream) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => DreamDetails(dream)),
    );
  }

  void navigateToDreamsAdd(BuildContext context) async {
    final result = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => DreamsAdd()),
    );

    if (result != null && result is dreamAdd) {
      DreamListProvider dreamListProvider =
          Provider.of<DreamListProvider>(context, listen: false);
      dreamListProvider.addDream(result);
    }
  }

  @override
  void initState() {
    super.initState();
  }

  int _selectedIndex = 2;

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
    return Scaffold(
      appBar: AppBar(
        //Задний фон
        backgroundColor: Colors.white,

        //Титульный текст со стилями
        title: Center(
          child: Text(
            'Мои желания',
            style: TextStyle(
                fontSize: 30,
                color: Color.fromRGBO(139, 8, 201, 1),
                fontFamily: 'Forum-Regular'),
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
                        itemCount: dreamList.length,
                        itemBuilder: (BuildContext context, int index) {
                          return  Card(

                            color: dreamList[index].flag == false? Color.fromRGBO(255, 0, 0, 0.2): Color.fromRGBO(0, 128, 0, 0.2),
                              child: ListTile(
                                title: Text((dreamList[dreamList.length - index-1]).nameDream),
                                trailing: IconButton(
                                  icon: Icon(
                                    Icons.menu,
                                    color: Color.fromRGBO(139, 8, 201, 1),
                                  ),
                                  onPressed: () {
                                    navigateToDreamDetails(
                                        context, dreamList[dreamList.length - index-1]);
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
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color.fromRGBO(139, 8, 201, 1),
        onPressed: () {
          navigateToDreamsAdd(context);
        },
        child: Icon(
          Icons.add_box,
          color: Colors.white,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.map_outlined, size: 25, color: Colors.black),
            label: 'Обзор',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.widgets_outlined, size: 25, color: Colors.black),
            label: 'Категории',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.star_outline,
              size: 25,
              color: Colors.black,
            ),
            label: 'Мои желания',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings_outlined,
              size: 25,
              color: Colors.black,
            ),
            label: 'Настройки',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color.fromRGBO(139, 8, 201, 1),
        onTap: _onItemTapped,
      ),
    );
  }
}
