import 'dart:convert';

import 'package:dio/dio.dart';

import '../data/models/character_model.dart';

class CharacterApi {
  late Dio dio;
  CharacterApi() {
     BaseOptions options = BaseOptions(
        baseUrl: 'https://rickandmortyapi.com/api',
        receiveDataWhenStatusError: true);
        dio = Dio(options);
  }
  Future<CharacterModel> getAllCharacters() async{
    try{  
      Response response = await dio.get('/character');
      final CharacterModel characteModel = jsonDecode(CharacterModel.fromJson(response.data).toString());
    return characteModel;
    } catch(e){
      throw Exception(e);
    }
  }
}
