/// Data for endpoint pokemon/{id or name}/

class Pokemon {
  final int baseExperience;
  final int height;
  final int id;
  final int isDefault;
  final String name;
  final int order;
  final int weight;
  Pokemon(dynamic json)
      : baseExperience = json['base_experience'],
        height = json['height'],
        id = json['id'],
        isDefault = json['is_default'],
        name = json['name'],
        order = json['order'],
        weight = json['weight'];
}
