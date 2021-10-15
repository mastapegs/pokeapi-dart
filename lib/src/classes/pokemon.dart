/// Data for endpoint pokemon/{id or name}/

class Pokemon {
  String? name;
  Pokemon(dynamic json) {
    name = json['name'];
  }
}
