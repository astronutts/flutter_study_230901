// ignore_for_file: unused_import

import 'package:flutter/material.dart';

class Animal {
  String? imagePath;
  String? animalName;
  String? kind;
  bool? flyExist = false;

  Animal({
    required this.animalName,
    required this.flyExist,
    required this.imagePath,
    this.kind,
  });
}
