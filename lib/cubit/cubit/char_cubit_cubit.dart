// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../data/models/character.dart';
import '../../data/models/character_model.dart';
import '../../data/repo/character_repo.dart';


part 'char_cubit_state.dart';

class CharCubit extends Cubit<CharCubitState> {
  CharCubit(
    this.characterRepo,
  ) : super(CharCubitInitial());
  late final CharacterRepo characterRepo ;
  late final CharacterModel characterModel;
  CharacterModel getAllCharacters(){
   characterRepo.getAllCharacters().then((characterModel){
      emit(CharacterLoadding(isLoading: true));
      emit(CharacterLoadded(characters: characterModel.characters!));
    });
    return characterModel;
  }
  

}
