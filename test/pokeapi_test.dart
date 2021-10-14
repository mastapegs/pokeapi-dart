import 'package:pokeapi/pokeapi.dart';
import 'package:test/test.dart';

void main() async {
  group('A group of tests', () {
    final awesome = Awesome();

    setUp(() {
      // Additional setup goes here.
    });

    test('First Test', () {
      expect(awesome.isAwesome, isTrue);
    });
  });

  group('Personal Tests', () {
    test('Test pokemon getter', () async {
      var pokemon = await getPokemon();
      expect(pokemon["name"], 'bulbasaur');
    });
  });
}
