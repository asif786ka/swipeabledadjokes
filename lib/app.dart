import 'package:flutter/material.dart';
import 'package:swipedadjokesasif/screens/home/home.dart';

class SwipeDadJokesApp extends StatelessWidget {
  const SwipeDadJokesApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Swipe Dad Jokes',
        theme: ThemeData(
          primarySwatch: Colors.deepPurple,
        ),
        home: const HomeScreen(),
      );
}
