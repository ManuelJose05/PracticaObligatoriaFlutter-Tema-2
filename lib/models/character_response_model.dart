// To parse this JSON data, do
//
//     final charactersResponse = charactersResponseFromJson(jsonString);

import 'dart:convert';

CharactersResponse charactersResponseFromJson(String str) => CharactersResponse.fromJson(json.decode(str));

class CharactersResponse {
    String next;
    List<Character> results;

    CharactersResponse({
        required this.next,
        required this.results,
    });

    factory CharactersResponse.fromJson(Map<String, dynamic> json) => CharactersResponse(
        next: json["next"],
        results: List<Character>.from(json["results"].map((x) => Character.fromJson(x))),
    );
}

class Character {
    String name;
    String height;
    String mass;
    String hairColor;
    String skinColor;
    String eyeColor;
    String birthYear;
    String gender;
    String url;

    Character({
        required this.name,
        required this.height,
        required this.mass,
        required this.hairColor,
        required this.skinColor,
        required this.eyeColor,
        required this.birthYear,
        required this.gender,
        required this.url,
    });

    factory Character.fromJson(Map<String, dynamic> json) => Character(
        name: json["name"],
        height: json["height"],
        mass: json["mass"],
        hairColor: json["hair_color"],
        skinColor: json["skin_color"],
        eyeColor: json["eye_color"],
        birthYear: json["birth_year"],
        gender: json["gender"],
        url: json["url"],
    );
}