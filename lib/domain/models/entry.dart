import 'dart:convert';

import 'package:floor/floor.dart';

// ignore_for_file: public_member_api_docs, sort_constructors_first
@entity
class Entry {
  @primaryKey
  int id;
  String name;
  String description;
  String commonLocations;
  String category;
  String image; // Added field for image URL

  Entry({
    required this.id,
    required this.name,
    required this.description,
    required this.commonLocations,
    required this.category,
    required this.image, // Initialize the new field
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'description': description,
      'commonLocations': commonLocations,
      'category': category,
      'image': image, // Map the new field
    };
  }

  factory Entry.fromMap(Map<String, dynamic> map) {
    return Entry(
      id: map['id'] as int,
      name: map['name'] as String,
      description: map['description'] as String,
      commonLocations: jsonEncode(map['common_location'] ?? ['Sem localização']),
      category: map['category'] as String,
      image: map['image'] as String, // Construct from map
    );
  }

  List<String> commonLocationsConverter(){
    return (jsonDecode(commonLocations) as List<dynamic>).map((e) => e as String).toList();
  }

  String toJson() => json.encode(toMap());

  factory Entry.fromJson(String source) => Entry.fromMap(json.decode(source) as Map<String, dynamic>);
}
