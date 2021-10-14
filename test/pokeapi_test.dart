import 'package:pokeapi/pokeapi.dart' as pokeapi;
import 'package:test/test.dart';

void main() async {
  group('Personal Tests', () {
    test('Test pokemon getter', () async {
      var pokemon = await pokeapi.getPokemon();
      expect(pokemon["name"], 'bulbasaur');
    });
  });
}
