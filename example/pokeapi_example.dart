import 'package:pokeapi/pokeapi.dart' as pokeapi;

void main() async {
  var bulbasaur = await pokeapi.getPokemon(1);
  print('Pokemon: ${bulbasaur["name"]}');
}
