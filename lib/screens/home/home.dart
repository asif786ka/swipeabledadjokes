import 'package:flutter/material.dart';
import 'package:swipedadjokesasif/screens/home/widgets/app_menu.dart';
import 'package:swipedadjokesasif/screens/home/widgets/card_stack.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) => SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Swipe Dad Jokes'),
          ),
          drawer: const AppMenu(),
          body: const Padding(
            padding: EdgeInsets.all(30),
            child: CardStack(stackSize: 5),
          ),
        ),
      );
}
