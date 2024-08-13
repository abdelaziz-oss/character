// ignore_for_file: public_member_api_docs, sort_constructors_first


import '../../web_service/api.dart';
import '../models/character_model.dart';

class CharacterRepo {
 late final CharacterApi characterApi;
  CharacterRepo({
    required this.characterApi,
  });
  Future<CharacterModel> getAllCharacters()async{
    final characterModel = await characterApi.getAllCharacters();
    return characterModel;
  }
}
