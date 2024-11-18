import 'dart:math';

import 'package:flutter/material.dart';
import 'package:practica_obligatoria_t2/models/character_response_model.dart';
import 'package:practica_obligatoria_t2/models/gif_model.dart';
import 'package:practica_obligatoria_t2/services/characters_service.dart';
import 'package:practica_obligatoria_t2/presentation/widgets/character_view_widget.dart';
import 'package:practica_obligatoria_t2/services/gif_service.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Character> personajes = [];
  List<Gif> gifs = [];
  GifService gifService = GifService();
  CharactersService charactersService = CharactersService();
  int numGif = 0;
  int numPersonaje = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Image.asset('assets/logo3.png',width: 100,height: 100,),
        backgroundColor: Colors.black,
        leading: IconButton(
          onPressed: () {
            numPersonaje = Random().nextInt(8);
            numGif = 0;
            setState(() {});
          },
          icon: Icon(Icons.change_circle),
          color: Colors.white,
        ),
      ),
      body: Column(
        children: [
          Center(
            child: personajes.isEmpty
                ? Column(
                    children: [
                      SizedBox(height: 100,),
                      CircularProgressIndicator(),
                      TextButton(
                          onPressed: () async {
                            personajes = await charactersService.getCharacters();
                            setState(() {});
                          },
                          child: Text('Llamar a los guerreros'))
                    ],
                  )
                : FutureBuilder(
                    future: gifService.getGifs(personajes[numPersonaje].name),
                    builder: (context, snapshot) {
                      gifs = snapshot.data!;
                      return snapshot.hasData
                          ? SingleChildScrollView(
                              child: Column(children: [
                                CharacterViewWidget(
                                    character: personajes[numPersonaje],
                                    gif: gifs[numGif]),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        FloatingActionButton(onPressed: () {
                                      if (numGif > 0) numGif--;
                                      setState(() {});
                                    },child: Icon(Icons.navigate_before_outlined,color: Colors.white,),backgroundColor: Colors.black,),
                                    FloatingActionButton(onPressed: () {
                                      if (numGif < 8) numGif++;
                                      setState(() {});
                                    }, child: Icon(Icons.navigate_next,color: Colors.white,),backgroundColor: Colors.black,)
                                      ],
                                    )
                              ]),
                            )
                          : Text('Los guerreros no han podido acudir a la llamada imperial');
                    }),
            //CharacterViewWidget(character: personajes[1], gif: gifs[0])),
          )
        ],
      ),
    );
  }
}
