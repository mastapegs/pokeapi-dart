import 'package:pokeapi/pokeapi.dart' as pokeapi;
import 'package:test/test.dart';

void main() async {
  group('getPokemon', () {
    test('should return bulbasaur', () async {
      var pokemon = await pokeapi.getPokemon(1);
      expect(pokemon["name"], 'bulbasaur');
    });

    test('should return ivysaur', () async {
      var pokemon = await pokeapi.getPokemon(2);
      expect(pokemon["name"], 'ivysaur');
    });

    test('should return venusaur', () async {
      var pokemon = await pokeapi.getPokemon(3);
      expect(pokemon["name"], 'venusaur');
    });
  });
}
