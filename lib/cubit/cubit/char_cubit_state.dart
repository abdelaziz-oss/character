// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'char_cubit_cubit.dart';

@immutable
abstract class CharCubitState {}

class CharCubitInitial extends CharCubitState {}
class CharacterLoadded extends CharCubitState {
  late final  List<Character> characters;
  CharacterLoadded({
    required this.characters,
  });
}
class CharacterLoadding extends CharCubitState{
  bool isLoading =false;
  CharacterLoadding({
    required this.isLoading,
  });
}
