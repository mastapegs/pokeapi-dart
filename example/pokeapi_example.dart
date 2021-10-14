import 'package:pokeapi/pokeapi.dart' as pokeapi;

void main() async {
  var bulbasaur = await pokeapi.getPokemon();
  print('Pokemon: ${bulbasaur["name"]}');
}
