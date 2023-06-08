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
          child: Center(
            child: Column(children: [
              SizedBox(
                height: 40,
              ),
              Text("Если вы хотите с нами связаться,\n то вот ссылки на наши соцсети",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontFamily: 'Forum-Regular'),),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 40,
              ),
              Text("Анисимов Андрей",
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                    fontFamily: 'Forum-Regular'),),
              SelectableText("https://vk.com/l1nk21",onTap: () => debugPrint('Tapped'),
                toolbarOptions: const ToolbarOptions(
                  copy: true,
                  selectAll: true,
                ),
                showCursor: true,
                cursorWidth: 2,
                cursorColor: Color.fromRGBO(139, 8, 201, 1),
                cursorRadius: const Radius.circular(5),),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 40,
              ),
              Text("Александра Долгих",
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                    fontFamily: 'Forum-Regular'),),
              SelectableText("https://vk.com/alexandra_dolgih",onTap: () => debugPrint('Tapped'),
                toolbarOptions: const ToolbarOptions(
                  copy: true,
                  selectAll: true,
                ),
                showCursor: true,
                cursorWidth: 2,
                cursorColor: Color.fromRGBO(139, 8, 201, 1),
                cursorRadius: const Radius.circular(5),),
              SizedBox(
                height: 40,
              ),
              Text("Худяков Даниил",
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                    fontFamily: 'Forum-Regular'),),
              SelectableText("https://vk.com/mortemeffugere.nemopotest",onTap: () => debugPrint('Tapped'),
                toolbarOptions: const ToolbarOptions(
                  copy: true,
                  selectAll: true,
                ),
                showCursor: true,
                cursorWidth: 2,
                cursorColor: Color.fromRGBO(139, 8, 201, 1),
                cursorRadius: const Radius.circular(5),),
              SizedBox(
                height: 40,
              ),
              Text("Бондаренко Егор",
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                    fontFamily: 'Forum-Regular'),),
              SelectableText("https://vk.com/egor_igorevich19",onTap: () => debugPrint('Tapped'),
          toolbarOptions: const ToolbarOptions(
            copy: true,
            selectAll: true,
          ),
          showCursor: true,
          cursorWidth: 2,
          cursorColor: Color.fromRGBO(139, 8, 201, 1),
          cursorRadius: const Radius.circular(5),),
              SizedBox(
                height: 40,
              ),
              Text("Вихляев Иван",
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                    fontFamily: 'Forum-Regular'),),
              SelectableText("https://vk.com/id232121132",onTap: () => debugPrint('Tapped'),
                toolbarOptions: const ToolbarOptions(
                  copy: true,
                  selectAll: true,
                ),
                showCursor: true,
                cursorWidth: 2,
                cursorColor: Color.fromRGBO(139, 8, 201, 1),
                cursorRadius: const Radius.circular(5),),
            ]),
          ),
        ),

          bottomNavigationBar: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.map_outlined, size: 25, color: Colors.black),
                label: 'Обзор',
              ),
              BottomNavigationBarItem(
                icon:
                    Icon(Icons.widgets_outlined, size: 25, color: Colors.black),
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
