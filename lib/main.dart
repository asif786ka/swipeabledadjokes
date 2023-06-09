import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'app.dart';
import 'data/models/joke.dart';


void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(JokeAdapter());
  final starredJokes = await Hive.openBox('starred');

  runApp(const SwipeDadJokesApp());

  await starredJokes.close();
}
