/// Data for endpoint pokemon/{id or name}/

class VersionGameIndex {
  final int gameIndex;
  final NamedAPIResource version;
  VersionGameIndex(dynamic json)
      : gameIndex = json['game_index'],
        version = NamedAPIResource(json['version']);
}

class NamedAPIResource {
  final String name;
  final String url;
  NamedAPIResource(dynamic resource)
      : name = resource['name'],
        url = resource['url'];
}

class PokemonAbility {
  final NamedAPIResource ability;
  final bool isHidden;
  final int slot;
  PokemonAbility(dynamic ability)
      : ability = NamedAPIResource(ability['ability']),
        isHidden = ability['is_hidden'],
        slot = ability['slot'];
}

class Pokemon {
  final List<PokemonAbility> abilities;
  final int baseExperience;
  final List<NamedAPIResource> forms;
  final List<VersionGameIndex> gameIndices;
  final int height;
  final int id;
  final bool isDefault;
  final String locationAreaEncounters;
  final String name;
  final int order;
  final int weight;
  Pokemon(Map<String, dynamic> json)
      : abilities = List<PokemonAbility>.from(
            json['abilities'].map((ability) => PokemonAbility(ability))),
        baseExperience = json['base_experience'],
        forms = List<NamedAPIResource>.from(
            json['forms'].map((form) => NamedAPIResource(form))),
        gameIndices = List<VersionGameIndex>.from(json['game_indices']
            .map((gameIndex) => VersionGameIndex(gameIndex))),
        height = json['height'],
        id = json['id'],
        isDefault = json['is_default'],
        locationAreaEncounters = json['location_area_encounters'],
        name = json['name'],
        order = json['order'],
        weight = json['weight'];
}
