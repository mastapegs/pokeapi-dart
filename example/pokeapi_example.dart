import 'package:pokeapi/pokeapi.dart' as pokeapi;

void main() async {
  var pokemon = await pokeapi.getPokemon(1);
  print('Pokemon: ${pokemon.name}');
}
