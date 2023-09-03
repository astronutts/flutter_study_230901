// ignore_for_file: unused_field, avoid_unnecessary_containers

import 'package:flutter/cupertino.dart';
import 'package:flutter_study/animalitem.dart';

class CupertinoSecondPage extends StatefulWidget {
  final List<Animal>? animalList;
  const CupertinoSecondPage({super.key, required this.animalList});

  @override
  State<CupertinoSecondPage> createState() => _CupertinoSecondPageState();
}

class _CupertinoSecondPageState extends State<CupertinoSecondPage> {
  TextEditingController? _textEditingController;
  int _kindChoice = 0;
  bool _flyExist = false;
  String? _imagePath;

  Map<int, Widget> segmentWidgets = {
    0: const SizedBox(
      width: 80,
      child: Text('양서류', textAlign: TextAlign.center),
    ),
    1: const SizedBox(
      width: 80,
      child: Text('포유류', textAlign: TextAlign.center),
    ),
    2: const SizedBox(
      width: 80,
      child: Text(
        '파충류',
        textAlign: TextAlign.center,
      ),
    )
  };

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _textEditingController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text("동물추가"),
      ),
      child: SizedBox(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CupertinoTextField(
                controller: _textEditingController,
                keyboardType: TextInputType.text,
                maxLines: 1,
              ),
              CupertinoSegmentedControl(
                padding: const EdgeInsets.only(bottom: 50, top: 50),
                children: segmentWidgets,
                onValueChanged: (int value) {
                  _kindChoice = value;
                  setState(() {});
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("날개가 존재합니까?"),
                  CupertinoSwitch(
                    value: _flyExist,
                    onChanged: (value) {
                      _flyExist = value;
                      setState(() {});
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 100,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    GestureDetector(
                      child: Image.asset(
                        'image/animal_image/cow.png',
                        width: 80,
                      ),
                      onTap: () {
                        _imagePath = 'image/animal_image/cow.png';
                      },
                    ),
                    GestureDetector(
                      child: Image.asset(
                        'image/animal_image/pig.png',
                        width: 80,
                      ),
                      onTap: () {
                        _imagePath = 'image/animal_image/pig.png';
                      },
                    ),
                    GestureDetector(
                      child: Image.asset(
                        'image/animal_image/bee.png',
                        width: 80,
                      ),
                      onTap: () {
                        _imagePath = 'image/animal_image/bee.png';
                      },
                    ),
                    GestureDetector(
                      child: Image.asset(
                        'image/animal_image/cat.png',
                        width: 80,
                      ),
                      onTap: () {
                        _imagePath = 'image/animal_image/cat.png';
                      },
                    ),
                    GestureDetector(
                      child: Image.asset(
                        'image/animal_image/fox.png',
                        width: 80,
                      ),
                      onTap: () {
                        _imagePath = 'image/animal_image/fox.png';
                      },
                    ),
                    GestureDetector(
                      child: Image.asset(
                        'image/animal_image/monkey.png',
                        width: 80,
                      ),
                      onTap: () {
                        _imagePath = 'image/animal_image/monkey.png';
                      },
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              CupertinoButton(
                child: const Text('동물추가하기'),
                onPressed: () {
                  widget.animalList?.add(
                    Animal(
                      animalName: _textEditingController?.value.text,
                      flyExist: _flyExist,
                      imagePath: _imagePath,
                    ),
                  );
                  print(widget.animalList);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
