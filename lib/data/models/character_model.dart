

import 'character.dart';
import 'info_model.dart';

class CharacterModel{
 InfoModel? info;
  List<Character>? characters;

  CharacterModel({this.info, this.characters});

   CharacterModel.fromJson(Map<String, dynamic> json) {
    info = json['info'];
    if (json['results'] != null) {
      characters = <Character>[];
      json['results'].forEach((element) {
        characters!.add(new Character.fromJson(element));
      });
    }
}}