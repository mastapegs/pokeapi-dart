import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

Future<dynamic> getPokemon(int id) async {
  final url = Uri.https('pokeapi.co', '/api/v2/pokemon/$id');
  final response = await http.get(url);
  final json = convert.jsonDecode(response.body);
  return json;
}
