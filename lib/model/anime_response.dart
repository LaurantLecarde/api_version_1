class AnimeResponse {
  List<Items>? items;
  int? count;

  AnimeResponse({this.items, this.count});

  AnimeResponse.fromJson(Map<String, dynamic> json) {
    if (json['items'] != null) {
      items = <Items>[];
      json['items'].forEach((v) {
        items!.add(new Items.fromJson(v));
      });
    }
    count = json['count'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.items != null) {
      data['items'] = this.items!.map((v) => v.toJson()).toList();
    }
    data['count'] = this.count;
    return data;
  }
}

class Items {
  int? id;
  String? idV2;
  String? imageUrl;
  String? sampleUrl;
  int? imageSize;
  int? imageWidth;
  int? imageHeight;
  int? sampleSize;
  int? sampleWidth;
  int? sampleHeight;
  String? source;
  dynamic sourceId;
  String? rating;
  String? verification;
  String? hashMd5;
  String? hashPerceptual;
  List<int>? colorDominant;
  List<List>? colorPalette;
  dynamic duration;
  bool? isOriginal;
  bool? isScreenshot;
  bool? isFlagged;
  bool? isAnimated;
  Artist? artist;
  List<Characters>? characters;
  List<Tags>? tags;
  double? createdAt;
  double? updatedAt;

  Items(
      {this.id,
      this.idV2,
      this.imageUrl,
      this.sampleUrl,
      this.imageSize,
      this.imageWidth,
      this.imageHeight,
      this.sampleSize,
      this.sampleWidth,
      this.sampleHeight,
      this.source,
      this.sourceId,
      this.rating,
      this.verification,
      this.hashMd5,
      this.hashPerceptual,
      this.colorDominant,
      this.colorPalette,
      this.duration,
      this.isOriginal,
      this.isScreenshot,
      this.isFlagged,
      this.isAnimated,
      this.artist,
      this.characters,
      this.tags,
      this.createdAt,
      this.updatedAt});

  Items.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    idV2 = json['id_v2'];
    imageUrl = json['image_url'];
    sampleUrl = json['sample_url'];
    imageSize = json['image_size'];
    imageWidth = json['image_width'];
    imageHeight = json['image_height'];
    sampleSize = json['sample_size'];
    sampleWidth = json['sample_width'];
    sampleHeight = json['sample_height'];
    source = json['source'];
    sourceId = json['source_id'];
    rating = json['rating'];
    verification = json['verification'];
    hashMd5 = json['hash_md5'];
    hashPerceptual = json['hash_perceptual'];
    colorDominant = json['color_dominant'].cast<int>();
    duration = json['duration'];
    isOriginal = json['is_original'];
    isScreenshot = json['is_screenshot'];
    isFlagged = json['is_flagged'];
    isAnimated = json['is_animated'];
    artist = json['artist'] != null ? Artist.fromJson(json['artist']) : null;
    if (json['characters'] != null) {
      characters = <Characters>[];
      json['characters'].forEach((v) {
        characters!.add(Characters.fromJson(v));
      });
    }
    if (json['tags'] != null) {
      tags = <Tags>[];
      json['tags'].forEach((v) {
        tags!.add(Tags.fromJson(v));
      });
    }
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['id_v2'] = this.idV2;
    data['image_url'] = this.imageUrl;
    data['sample_url'] = this.sampleUrl;
    data['image_size'] = this.imageSize;
    data['image_width'] = this.imageWidth;
    data['image_height'] = this.imageHeight;
    data['sample_size'] = this.sampleSize;
    data['sample_width'] = this.sampleWidth;
    data['sample_height'] = this.sampleHeight;
    data['source'] = this.source;
    data['source_id'] = this.sourceId;
    data['rating'] = this.rating;
    data['verification'] = this.verification;
    data['hash_md5'] = this.hashMd5;
    data['hash_perceptual'] = this.hashPerceptual;
    data['color_dominant'] = this.colorDominant;
    data['duration'] = this.duration;
    data['is_original'] = this.isOriginal;
    data['is_screenshot'] = this.isScreenshot;
    data['is_flagged'] = this.isFlagged;
    data['is_animated'] = this.isAnimated;
    if (this.artist != null) {
      data['artist'] = this.artist!.toJson();
    }
    if (this.characters != null) {
      data['characters'] = this.characters!.map((v) => v.toJson()).toList();
    }
    if (this.tags != null) {
      data['tags'] = this.tags!.map((v) => v.toJson()).toList();
    }
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}

class ColorPalette {
  ColorPalette();

  ColorPalette.fromJson(Map<String, dynamic> json) {}

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    return data;
  }
}

class Artist {
  int? id;
  String? idV2;
  String? name;
  List<String>? aliases;
  dynamic imageUrl;
  List<String>? links;
  dynamic policyRepost;
  bool? policyCredit;
  bool? policyAi;

  Artist(
      {this.id,
      this.idV2,
      this.name,
      this.aliases,
      this.imageUrl,
      this.links,
      this.policyRepost,
      this.policyCredit,
      this.policyAi});

  Artist.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    idV2 = json['id_v2'];
    name = json['name'];
    aliases = json['aliases'].cast<String>();
    imageUrl = json['image_url'];
    links = json['links'].cast<String>();
    policyRepost = json['policy_repost'];
    policyCredit = json['policy_credit'];
    policyAi = json['policy_ai'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['id_v2'] = this.idV2;
    data['name'] = this.name;
    data['aliases'] = this.aliases;
    data['image_url'] = this.imageUrl;
    data['links'] = this.links;
    data['policy_repost'] = this.policyRepost;
    data['policy_credit'] = this.policyCredit;
    data['policy_ai'] = this.policyAi;
    return data;
  }
}

class Characters {
  int? id;
  String? idV2;
  String? name;
  List<String>? aliases;
  String? description;
  List<int>? ages;
  dynamic height;
  dynamic weight;
  String? gender;
  String? species;
  dynamic birthday;
  String? nationality;
  List<String>? occupations;

  Characters(
      {this.id,
      this.idV2,
      this.name,
      this.aliases,
      this.description,
      this.ages,
      this.height,
      this.weight,
      this.gender,
      this.species,
      this.birthday,
      this.nationality,
      this.occupations});

  Characters.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    idV2 = json['id_v2'];
    name = json['name'];
    aliases = json['aliases'].cast<String>();
    description = json['description'];
    ages = json['ages'].cast<int>();
    height = json['height'];
    weight = json['weight'];
    gender = json['gender'];
    species = json['species'];
    birthday = json['birthday'];
    nationality = json['nationality'];
    occupations = json['occupations'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['id_v2'] = this.idV2;
    data['name'] = this.name;
    data['aliases'] = this.aliases;
    data['description'] = this.description;
    data['ages'] = this.ages;
    data['height'] = this.height;
    data['weight'] = this.weight;
    data['gender'] = this.gender;
    data['species'] = this.species;
    data['birthday'] = this.birthday;
    data['nationality'] = this.nationality;
    data['occupations'] = this.occupations;
    return data;
  }
}

class Tags {
  int? id;
  String? idV2;
  String? name;
  String? description;
  String? sub;
  bool? isNsfw;

  Tags(
      {this.id, this.idV2, this.name, this.description, this.sub, this.isNsfw});

  Tags.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    idV2 = json['id_v2'];
    name = json['name'];
    description = json['description'];
    sub = json['sub'];
    isNsfw = json['is_nsfw'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['id_v2'] = this.idV2;
    data['name'] = this.name;
    data['description'] = this.description;
    data['sub'] = this.sub;
    data['is_nsfw'] = this.isNsfw;
    return data;
  }
}
