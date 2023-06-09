import 'package:dio/dio.dart';

import '../models/joke.dart';

class JokeServiceException implements Exception {}

class JokeService {
  JokeService({this.apiRoot = 'https://icanhazdadjoke.com/'})
      : client = Dio(BaseOptions(baseUrl: apiRoot, headers: {
    'Accept': 'application/json',
     }));

  final String apiRoot;
  final Dio client;

  Future<Joke> getRandomJoke() async {
    try {
      var response = await client.get('');
      return Joke.fromJson(response.data);
    } on DioError {
      throw JokeServiceException();
    }
  }
}
