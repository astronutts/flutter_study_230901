import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_study/animalitem.dart';
import 'package:flutter_study/iosSub/cupertinoFirstPage.dart';

class CupertinoMain extends StatefulWidget {
  const CupertinoMain({super.key});

  @override
  State<CupertinoMain> createState() => _CupertinoMainState();
}

class _CupertinoMainState extends State<CupertinoMain> {
  CupertinoTabBar? tabBar;
  List<Animal> animalList = List.empty(growable: true);

  @override
  void initState() {
    super.initState();
    tabBar = CupertinoTabBar(items: const <BottomNavigationBarItem>[
      BottomNavigationBarItem(icon: Icon(CupertinoIcons.home)),
      BottomNavigationBarItem(
        icon: Icon(
          CupertinoIcons.add,
        ),
      ),
    ]);
    animalList.add(Animal(
        animalName: "벌",
        kind: "곤충",
        imagePath: "image/animal_image/bee.png",
        flyExist: null));
    animalList.add(Animal(
        animalName: "고양이",
        kind: "포유류",
        imagePath: "image/animal_image/cat.png",
        flyExist: null));
    animalList.add(Animal(
        animalName: "젖소",
        kind: "포유류",
        imagePath: "image/animal_image/cow.png",
        flyExist: null));
    animalList.add(Animal(
        animalName: "강아지",
        kind: "포유류",
        imagePath: "image/animal_image/dog.png",
        flyExist: null));
    animalList.add(Animal(
        animalName: "여우",
        kind: "포유류",
        imagePath: "image/animal_image/fox.png",
        flyExist: null));
    animalList.add(Animal(
        animalName: "원숭이",
        kind: "영장류",
        imagePath: "image/animal_image/monkey.png",
        flyExist: null));
    animalList.add(Animal(
        animalName: "돼지",
        kind: "포유류",
        imagePath: "image/animal_image/pig.png",
        flyExist: null));
    animalList.add(Animal(
        animalName: "늑대",
        kind: "포유류",
        imagePath: "image/animal_image/wolf.png",
        flyExist: null));
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: CupertinoTabScaffold(
          tabBar: tabBar!,
          tabBuilder: (context, value) {
            if (value == 0) {
              return Container(
                child: CupertinoFirstPage(animalList: animalList),
              );
            } else {
              return Container(
                child: const Center(
                  child: Text("cupertino tab 2"),
                ),
              );
            }
          }),
    );
  }
}
