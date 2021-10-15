import 'dart:convert' as convert;
import 'package:http/http.dart' as http;
import '../../src/classes/pokemon.dart';

Future<Pokemon> getPokemon(int id) async {
  final url = Uri.https('pokeapi.co', '/api/v2/pokemon/$id');
  final response = await http.get(url);
  final pokemon = Pokemon(convert.jsonDecode(response.body));
  return pokemon;
}
