import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_app/presentation/widgets/character_item.dart';
import '../../cubit/cubit/char_cubit_cubit.dart';
import '../../data/models/character.dart';
import '../../data/models/character_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late final CharacterModel characterModel;
  late final List<Character> characters;
  @override
  void initState() {
   
    characterModel = BlocProvider.of<CharCubit>( context).getAllCharacters();
    characters = characterModel.characters!;
     super.initState();
  }

  Widget CharBlocBuilder() {
    return BlocBuilder<CharCubit, CharCubitState>(builder: (context, state) {
      if (state is CharacterLoadded) {
        characters = state.characters;
        return buildCharactersList();
      } else {
        return const Center(
            child: CircularProgressIndicator(
          color: Colors.white,
        ));
      }
    });
  }

  Widget buildCharactersList() {
    return SingleChildScrollView(
      child: Container(
        color: const Color.fromARGB(0, 218, 240, 119),
        child: Column(
          children: [buildLoaddedList()],
        ),
      ),
    );
  }

  Widget buildLoaddedList() {
    return GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 2 / 3,
            crossAxisSpacing: 1,
            mainAxisSpacing: 1),
            shrinkWrap: true,
            physics:const ClampingScrollPhysics(),
            padding: EdgeInsets.zero,
            itemCount: characters.length,
        itemBuilder: (ctx, index) {
         return CharacterItem( character: characters[index],);
        });
  }


  @override
  Widget build(BuildContext context) {
    return  CharBlocBuilder();
  }
}
