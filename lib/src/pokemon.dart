import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

Future<dynamic> getPokemon() async {
  var url = Uri.https('pokeapi.co', '/api/v2/pokemon/1');
  var response = await http.get(url);
  var json = convert.jsonDecode(response.body);
  return json;
}
