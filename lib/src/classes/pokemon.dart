/// Data for endpoint pokemon/{id or name}/

class Pokemon {
  final int baseExperience;
  final int id;
  final String name;
  Pokemon(dynamic json)
      : name = json['name'],
        id = json['id'],
        baseExperience = json['base_experience'];
}
