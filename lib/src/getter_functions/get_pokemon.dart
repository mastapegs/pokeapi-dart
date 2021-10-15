import 'dart:convert' as convert;
import 'package:http/http.dart' as http;
import '../../pokeapi.dart' as pokeapi;

Future<pokeapi.Pokemon> getPokemon(int id) async {
  final url = Uri.https('pokeapi.co', '/api/v2/pokemon/$id');
  final response = await http.get(url);
  final pokemon = pokeapi.Pokemon(convert.jsonDecode(response.body));
  return pokemon;
}
