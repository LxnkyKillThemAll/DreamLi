/*
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:project_1/pages/Dreams/dream_list_provider.dart';
import 'package:provider/provider.dart';
import 'package:project_1/pages/Dreams/Class.dart';


class review extends StatefulWidget {
  const review({Key? key}) : super(key: key);

  @override
  State<review> createState() => _reviewState();
}


// class _dreamReview {
//
//   late int idDream;
//   late String nameDream;
//   late String desDream;
//   late String stepsDream;
//   late String catDream;
//   late var urlDream;
//
//
//   _dreamReview(idDream,nameDream,desDream,urlDream,[stepsDream,catDream]){
//   this.idDream = idDream;
//   this.nameDream = nameDream;
//   this.desDream = desDream;
//   this.stepsDream = stepsDream;
//   this.catDream = catDream;
//   this.urlDream = urlDream;
//   }
// }





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

  List dreams = [
    dreamAdd("Путешествие ","",'',"assets/img/1.jpg"),
    dreamAdd("Покупка квартиры","Найдите квартиру своей мечты",'',"assets/img/2.jpg"),
    dreamAdd("Покупка машины ","Выберите автомобиль по душе",'',"assets/img/3.jpg"),
    dreamAdd("Переезд в другую страну","Чемоданы, билеты, коробки, собирайтесь и вперёд к мечте ",'',"assets/img/4.jpg"),
    dreamAdd("Отдых на море ","Время отдыха, не упустите свой шанс",'',"assets/img/5.jpg"),
    dreamAdd("Хорошая работа ","От места работы зависит вся ваша жизнь, самое время вспомнить о какой работе вы мечтали",'',"assets/img/6.png"),
    dreamAdd("Тату","",'',"assets/img/7.jpg"),
    dreamAdd("Перейти на правильное питание","Самое главное - здоровье, а первый ваш шаг это контроль питания",'',"assets/img/8.jpg"),
    dreamAdd("Новый телефон","Время обновиться! Выбери телефон, который всегда хотел(а)",'',"assets/img/9.png"),
    dreamAdd("Пробежать марафон","Утомительные тренировки и упорство! Соберитесь, у вас всё получиться! Ваша мечта уже совсем близко!",'',"assets/img/10.jpg"),
    dreamAdd("Записать свой трек","Творчество - это прекрасно. Попробуйте себя в новой сфере!",'',"assets/img/11.jpg"),
    dreamAdd("Испечь торт","Вы гениальный повар, стоит только попробовать! ",'',"assets/img/12.jpg"),
    dreamAdd("Полёт в космос","Выше только звёзды, как говорится \"Поехали!\"",'',"assets/img/13.jpg"),
    dreamAdd("Сдать на права","На велосипеде далеко не уедешь, теперь пора научиться управлять авто",'',"assets/img/14.jpg"),
    dreamAdd("Завести собаку ","Скучаете дома в одиночестве, домашнее животное скрасит ваши будни, но будьте готовы к ответственности",'',"assets/img/15.jpg"),
    dreamAdd("Завести кошку","Скучаете дома в одиночестве, домашнее животное скрасит ваши будни, но будьте готовы к ответственности",'',"assets/img/16.jpg"),
    dreamAdd("Первый миллион","Большая мечта требует больших усилий, будьте готовы к трудностям, но её исполнение принесёт кучу эмоций и не только эмоций",'',"assets/img/17.jpg"),
    dreamAdd("Сдать ЕГЭ","Очередное жизненное испытание, отбросьте страхи и с уверенностью пройдите его ",'',"assets/img/18.jpg"),
    dreamAdd("Поступить в инстиут","Вот она новая жизнь, остался один шаг к вашей мечте",'',"assets/img/19.jpg"),
    dreamAdd("Получить высшее образование","\"Учение - свет, неученье - тьма\" (А.В.Суворов)",'',"assets/img/20.jpg"),
    dreamAdd("Научиться ездить на велосипеде","Надоело стоять в пробках? Просто освойте новый транспорт, у вас получится!",'',"assets/img/21.jpg"),
    dreamAdd("Выучить английский","\"Учение - свет, неученье - тьма\" (А.В.Суворов)",'',"assets/img/22.jpg"),
    dreamAdd("Научиться программировать","Очень важно иметь навыки востребованные в данный момент.Программирование - один их таких, не ленитесь, Рим был построен не за один день!",'',"assets/img/23.jpg"),
    dreamAdd("Сменить причёску(мальчик)","Стиль есть у каждого из нас - его просто нужно найти!",'',"assets/img/24.jpg"),
    dreamAdd("Сменить причёску(девочка)","Стиль есть у каждого из нас - его просто нужно найти!",'',"assets/img/25.jpg"),
    dreamAdd("Сесть на шпагат","",'',"assets/img/26.jpg"),
    dreamAdd("Построить дом ","Одно из важнейших дел каждого мужчины, не бойся, есть цель иди к ней!",'',"assets/img/27.png"),
    dreamAdd("Прочитать книгу ","\"Учение - свет, неученье - тьма\" (А.В.Суворов)",'',"assets/img/28.jpg"),
    dreamAdd("Открыть свой бизнес","Возможно это будет дело всей вашей жизни, не бойтесь мечтать!",'',"assets/img/29.jpg"),
    dreamAdd("Нырнуть в прорубь ","Отличное развлечение на Рождество, каждый должен это почувстовать!",'',"assets/img/30.jpg"),
    dreamAdd("Встретить рассвет у моря ","Не забудьте взять вторую половинку и насладитесь прекрасным вечером ",'',"assets/img/31.jpg"),
    dreamAdd("Сходить на йогу ","Есть желание погрузиться в себя, йога отличный помощник, останьтесь на едине с собой и подумайте о высоком ",'',"assets/img/32.jpg"),
    dreamAdd("Найчиться рисовать ","Творчество - это прекрасно. Попробуйте себя в новой сфере!",'',"assets/img/33.jpg"),
    dreamAdd("Написать книгу ","Творчество - это прекрасно. Попробуйте себя в новой сфере!",'',"assets/img/34.jpg"),
    dreamAdd("Встретиться с кумиром ","У каждого есть человек, которым восхищаются! Мечтатете встретиться со своим кумиром, сделайте всё, чтобы это произошло!",'',"assets/img/35.jpg"),
    dreamAdd("Не спать всю ночь ","Ночь - хорошее время подумать обо всём на свете.",'',"assets/img/36.jpg"),
    dreamAdd("Спать весь день ","Минута сна - мешок здоровья!",'',"assets/img/37.jpg"),
    dreamAdd("Встретить девушку ","У каждого человека в мире, есть пара, некоторые уже нашли свою вторую половинку, а какому то ещё предстоит найти. Выйди на улицу вдруг она уже ждёт тебя!",'',"assets/img/38.jpg"),
    dreamAdd("Встретить парня ","У каждого человека в мире, есть пара, некоторые уже нашли свою вторую половинку, а какому то ещё предстоит найти. Выйди на улицу вдруг она уже ждёт тебя!",'',"assets/img/39.jpg"),
    dreamAdd("Посадить дерево ","У каждого мужчины в жизни есть три дела: посадить дерево, построить дом, вырастить сына. Начните с малого.",'',"assets/img/40.jpg"),
    dreamAdd("Побывать на необитаемом острове","Остров - отличное место для саморазвития и уединения, а так же можно приятно отдохнуть со своей второй половинкой.",'',"assets/img/41.jpg"),
    dreamAdd("Устроить пикник ","Солнечным летним днём самым лучшим развлечением будет пойти на пикник, отдохнуть всей семьёй на природе, или самому насладиться пейзажем.",'',"assets/img/42.jpg"),
    dreamAdd("Сходить на концерт","Давно хотите развеяться?! Скорее покупайте билеты на концерт своего любимого исполнителя или группы,берите с собой друзей и оторвитесь по полной.",'',"assets/img/43.jpg"),
    dreamAdd("Устроить вечеринку ","Собирай друзей и отдохните от постоянной работы на вечеринке.",'',"assets/img/44.jpg"),
    dreamAdd("Прыжок с парашютом ","Не каждый хватит смелости на такой поступок, но если хотите проверить себя, то впёред к новым высотам!",'',"assets/img/45.jpg"),
    dreamAdd("Научиться ходить на руках ","Устали от повседневной рутины? Может стоит посмотреть на всё под \"другим углом\" и научиться чему-то новому.",'',"assets/img/46.jpg"),
    dreamAdd("Обеспечить родителям старость","Родители воспитывали и учили вас всё детсво, теперь ваша очередь помогать и заботиться о них.",'',"assets/img/47.jpg"),
    dreamAdd("Научиться играть на гитаре ","Творчество - это прекрасно. Попробуйте себя в новой сфере!",'',"assets/img/48.jpg"),
    dreamAdd("Создать своё интернет-сообщество","Если вы чувствете, что у вас много последователей, то соберетись в одном месте - создайте свой паблик или канал в соцсетях.",'',"assets/img/49.png"),
    dreamAdd("Посетить горнолыжный курорт","На улице лето, а хочется снега? Готовьте лыжи и отправляйтесь на горнолыжный курорт!",'',"assets/img/50.jpg"),
    dreamAdd("Разработать своё приложение ","Возможно именно ты разработаешь то, что нужно людям, главное не бояться пробовать.",'',"assets/img/51.png"),
    dreamAdd("Защитить докторскую диссертацию","\"Учение - свет, неученье - тьма\" (А.В.Суворов)",'',"assets/img/52.png"),
    dreamAdd("Стать президентом ","Сильная мечта сильного человека. Тебя ждёт нелегкий путь, но правильный настрой и товарищи помогут его пройти. ",'',"assets/img/53.png"),
    dreamAdd("Построить самолёт ","Представь, что ты лучшй инженер, с чего бы ты начал проектирование самолёта? Отлично, теперь попробуй реализовать это в реальной жизни.",'',"assets/img/54.jpg"),
    dreamAdd("Создать вечный двигатель ","Люди годами ищут вечный источник энергии, покажи всем на что ты способен.",'',"assets/img/55.jpg"),
    dreamAdd("Создать свой мерч ","Творчество - это прекрасно. Попробуйте себя в новой сфере!",'',"assets/img/56.png"),
    dreamAdd("Добиться лечения рака любой степени","Вклад в медицину - это помощь будущему поколению, увековечь своё имя в истории.",'',"assets/img/57.jpg"),
    dreamAdd("1.Собрать компьютер ","",'',"assets/img/58.jpg"),
    dreamAdd("1.1. Проанализировать рынок компютерных запчастей","",'',"assets/img/59.jpg"),
    dreamAdd("1.2. Накопить n-ую сумму денег","",'',"assets/img/60.jpg"),
    dreamAdd("1.3. Купить все необходимые материалы","",'',"assets/img/61.jpg"),
    dreamAdd("1.4. Изучить процесс установки и сборки деталей ","",'',"assets/img/62.png"),
    dreamAdd("1.5. Выполнить сборку ","",'',"assets/img/63.jpg"),
    dreamAdd("1. Создать кибер-спортивную команду","",'',"assets/img/64.jpg"),
    dreamAdd("1.1. Набрать команду ","",'',"assets/img/65.jpg"),
    dreamAdd("1.2. Разделить роли и обязанности ","",'',"assets/img/66.png"),
    dreamAdd("1.3. Определиться с игрой ","",'',"assets/img/67.jpg"),
    dreamAdd("1.4. Начать тренировки ","",'',"assets/img/68.jpg")
  ]; //non-empty on create





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
          child: Container(
            decoration: BoxDecoration(color: Colors.white),
            width: MediaQuery.of(context).size.width - 0,
            height: MediaQuery.of(context).size.height - 170,
            child: ListView.builder(
                itemCount: dreams.length,
                itemBuilder: (BuildContext context, int index){
                  return Dismissible(
                    key: Key(dreams[index].nameDream),
                    child: GestureDetector(
                      onTap: (){

                        DreamListProvider dreamListProvider =
                            Provider.of<DreamListProvider>(context, listen: false);
                        dreamListProvider.addDream(dreams[index]);
                      },
                      child:
                      GFCard(
                        boxFit: BoxFit.cover,
                        titlePosition: GFPosition.start,
                        image: Image.asset(
                          dreams[index].categoryDream,
                          height: MediaQuery.of(context).size.height * 0.3,
                          width: MediaQuery.of(context).size.width,
                          fit: BoxFit.cover,
                        ),
                        showImage: true,
                        title: GFListTile(
                          titleText: dreams[index].nameDream,
                          subTitleText: dreams[index].descriptionDream,

                        ),
                      ),
                    ),
                    onDismissed: (direction){
                      setState(() {
                        dreams.removeAt(index);
                      });
                    },
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
*/