import 'dart:typed_data';

import 'package:flutter/material.dart';

import '../features/functions.dart';

class Task {
  static int id = 0;
  static String title = '';
  static String description = '';
  static String datetime = '';
  static int fgColor = Colors.black.value;
  static String isCompleted = '';
  static String isImportant = '';
  static String isPinned = '';
  static String isHidden = '';
  static int bgColor = Colors.white.value;
  static List<Uint8List> imageBytes = [];

  Task(Map<String, dynamic> task) {
    id = task['id'];
    title = task['title'];
    description = task['description'];
    datetime = task['datetime'];
    fgColor = task['fgColor'];
    isCompleted = task['isCompleted'];
    isImportant = task['isImportant'];
    isPinned = task['isPinned'];
    isHidden = task['isHidden'];
    bgColor = task['bgColor'];
    imageBytes = stringToUintList(imagesString: task['imageString']);
  }
}
