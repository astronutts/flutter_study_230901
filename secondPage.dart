import 'package:flutter/material.dart';

class SecondApp extends StatefulWidget {
  const SecondApp({super.key});

  @override
  State<SecondApp> createState() => _SecondAppState();
}

class _SecondAppState extends State<SecondApp> {
  final nameController = TextEditingController();
  int _radioValue = 0;
  bool? flyExist = false;

  _radioChange(int? value) {
    _radioValue = value!;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: nameController,
                keyboardType: TextInputType.text,
                maxLines: 1,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Radio(
                      value: 0,
                      groupValue: _radioValue,
                      onChanged: _radioChange),
                  const Text("양서류"),
                  Radio(
                      value: 0,
                      groupValue: _radioValue,
                      onChanged: _radioChange),
                  const Text("파충류"),
                  Radio(
                      value: 0,
                      groupValue: _radioValue,
                      onChanged: _radioChange),
                  const Text("포유류"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Can fly ???"),
                  Checkbox(
                      value: flyExist,
                      onChanged: (bool? check) {
                        flyExist = check;
                        setState(() {});
                      })
                ],
              ),
              ElevatedButton(onPressed: () {}, child: const Text('동물 추가하기'))
            ],
          ),
        ),
      ),
    );
  }
}
