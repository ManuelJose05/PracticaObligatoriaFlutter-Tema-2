import 'package:http/http.dart';
import 'package:practica_obligatoria_t2/models/character_response_model.dart';

class CharactersService {
  final String _url = 'https://swapi.dev/api/people';

  Future<List<Character>> getCharacters() async {
    List<Character> personajes = [];
    Uri uri = Uri.parse(_url);
    Response response = await get(uri);

    final CharactersResponse data = charactersResponseFromJson(response.body);
    personajes = data.results;
    return personajes;
  }
}
