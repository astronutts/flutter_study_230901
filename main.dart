// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_study/animalitem.dart';
import 'package:flutter_study/firstPage.dart';
import 'package:flutter_study/secondPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  TabController? controller;
  List<Animal> animalList = List.empty(growable: true);

  void initState() {
    super.initState();
    controller = TabController(length: 2, vsync: this);

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

  void dispose() {
    controller!.dispose();
    super.dispose();
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('TabBar Example'),
        ),
        body: TabBarView(
          children: [
            FirstApp(list: animalList),
            SecondApp(),
          ],
          controller: controller,
        ),
        bottomNavigationBar: TabBar(
          controller: controller,
          tabs: [
            Tab(
              icon: Icon(
                Icons.looks_one,
                color: Colors.blue,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.looks_two,
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
