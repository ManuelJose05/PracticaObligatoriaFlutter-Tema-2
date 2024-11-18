import 'package:http/http.dart';
import 'package:practica_obligatoria_t2/models/gif_model.dart';

class GifService {
  final String _url = 'https://api.giphy.com/v1/gifs/search';
  final String apiKey = 'u7e0tWy0QxR70K7iFBn1ll4HGYaePaNv';
  final int limit = 10;

  Future<List<Gif>> getGifs(String personaje) async {
    List<Gif> gifs = [];
    Uri uri = Uri.parse('$_url?api_key=$apiKey&q=$personaje&limit=$limit');
    Response response = await get(uri);
    final GifResponse data = gifResponseFromJson(response.body);
    gifs = data.data;
    return gifs;
  }
}