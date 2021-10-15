/// Data for endpoint pokemon/{id or name}/

class Pokemon {
  int? baseExperience;
  int? id;
  String? name;
  Pokemon(dynamic json) {
    name = json['name'];
    id = json['id'];
    baseExperience = json['base_experience'];
  }
}
