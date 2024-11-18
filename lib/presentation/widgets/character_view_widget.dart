import 'package:flutter/material.dart';
import 'package:practica_obligatoria_t2/models/character_response_model.dart';
import 'package:practica_obligatoria_t2/models/gif_model.dart';
import 'package:practica_obligatoria_t2/services/gif_service.dart';

class CharacterViewWidget extends StatelessWidget {
  CharacterViewWidget({
    super.key,
    required this.character, required this.gif
  });
  final Character character;
  final Gif gif;
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 4));
    return Center(
      child: Column(
        spacing: 2,
        children: [
          SizedBox(height: 40,),
          Image(image: NetworkImage(gif.images.downsizedMedium.url),width: 400,height: 170,),
          Text(character.name, style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                        Text('Altura: ',style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold)),
                        Text(character.height, style: TextStyle(fontSize: 18),)
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                        Text('Color de piel: ',style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold)),
                        Text(character.skinColor, style: TextStyle(fontSize: 18),)
            ],
          ),
        ],
      ),
    );
  }
}