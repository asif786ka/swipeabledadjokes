// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'joke.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class JokeAdapter extends TypeAdapter<Joke> {
  @override
  final int typeId = 42;

  @override
  Joke read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Joke(
      id: fields[0] as String,
      joke: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, Joke obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.joke);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is JokeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Joke _$JokeFromJson(Map<String, dynamic> json) => Joke(
      id: json['id'] as String,
      joke: json['joke'] as String,
    );

Map<String, dynamic> _$JokeToJson(Joke instance) => <String, dynamic>{
      'id': instance.id,
      'joke': instance.joke,
    };
