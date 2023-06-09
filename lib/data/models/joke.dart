import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

part 'joke.g.dart';

@HiveType(typeId: 42)
@JsonSerializable()
class Joke {
  Joke({required this.id, required this.joke});

  factory Joke.fromJson(Map<String, dynamic> json) => _$JokeFromJson(json);

  @HiveField(0)
  final String id;

  @HiveField(1)
  final String joke;

  Map<String, dynamic> toJson() => _$JokeToJson(this);
}
