/// Data for endpoint pokemon/{id or name}/

// class Ability {
//   final bool isHidden;
//   Ability(dynamic abilityMap) : isHidden = abilityMap['is_hidden'];
// }

class Pokemon {
  final List<dynamic> abilities;
  final int baseExperience;
  final int height;
  final int id;
  final bool isDefault;
  final String locationAreaEncounters;
  final String name;
  final int order;
  final int weight;
  Pokemon(dynamic json)
      : abilities = json['abilities'],
        baseExperience = json['base_experience'],
        height = json['height'],
        id = json['id'],
        isDefault = json['is_default'],
        locationAreaEncounters = json['location_area_encounters'],
        name = json['name'],
        order = json['order'],
        weight = json['weight'];
}
