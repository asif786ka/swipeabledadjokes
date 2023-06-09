import 'package:flutter/material.dart';

import '../../../data/models/joke.dart';
import '../../../widgets/card_button.dart';

class FavoriteJokeCard extends StatelessWidget {
  const FavoriteJokeCard({
    super.key,
    required this.joke,
    required this.onDelete,
  });

  final Joke joke;
  final VoidCallback onDelete;

  @override
  Widget build(BuildContext context) => Card(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Joke ID: ${joke.id}',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    const SizedBox(height: 10),
                    Text(joke.joke),
                  ],
                ),
              ),
              const SizedBox(width: 10),
              CardButton(
                  onPressed: onDelete,
                  buttonColor: Colors.red,
                  buttonContentColor: Colors.white,
                  icon: Icons.delete)
            ],
          ),
        ),
      );
}
