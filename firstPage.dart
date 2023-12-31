import 'package:flutter/material.dart';
import 'package:flutter_study/animalitem.dart';

class FirstApp extends StatelessWidget {
  final List<Animal>? list;
  const FirstApp({super.key, this.list});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: ListView.builder(
              itemCount: list!.length,
              itemBuilder: (context, position) {
                return GestureDetector(
                  onTap: () {
                    AlertDialog dialog = AlertDialog(
                      content: Text(
                        '이 동물은 ${list![position].kind} 입니다!!!',
                      ),
                    );
                    showDialog(
                        context: context,
                        builder: (BuildContext context) => dialog);
                  },
                  child: Card(
                    child: Row(
                      children: [
                        Image.asset(
                          list![position].imagePath!,
                          height: 100,
                          width: 100,
                          fit: BoxFit.contain,
                        ),
                        Text(list![position].animalName!)
                      ],
                    ),
                  ),
                );
              }),
        ),
      ),
    );
  }
}
