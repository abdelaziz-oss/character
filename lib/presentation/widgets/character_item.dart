import 'package:flutter/material.dart';
import '../../data/models/character.dart';

class CharacterItem extends StatelessWidget {
  const CharacterItem({super.key, required this.character});
  final Character character;

  @override
  Widget build(BuildContext context) {
    return GridTile(
      footer: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        color: Colors.black54,
        alignment: Alignment.bottomCenter,
        child: Row(
          children: [
            Text(
              '${character.name} ',
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(
              width: 3,
            ),
            Text(
              ' , He is  ${character.status}',
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(
              width: 3,
            ),
            Text(
              ' , And he lives in   ${character.location}',
              overflow: TextOverflow.ellipsis,
            )
          ],
        ),
      ),
      child: Container(
        width: double.infinity,
        margin: const EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(8)),
        child: character.image!.isNotEmpty
            ? FadeInImage.assetNetwork(
                placeholder: 'assets/images/loading.gif',
                image: character.image!,
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.cover,
              )
            : Image.asset('assets/images/placeholder.jpg'),
      ),
    );
  }
}
