/// data for endpoint https://pokeapi.co/api/v2/pokemon/{id or name}/

class Pokemon {
  int? name;
  Pokemon(dynamic json) {
    name = json['name'];
  }
}
