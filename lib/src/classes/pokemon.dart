/// Data for endpoint pokemon/{id or name}/

class Pokemon {
  final int baseExperience;
  final int id;
  final String name;
  Pokemon(dynamic json)
      : baseExperience = json['base_experience'],
        id = json['id'],
        name = json['name'];
}
