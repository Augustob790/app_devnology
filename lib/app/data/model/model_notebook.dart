// To parse this JSON data, do
//
//     final Notebook = NotebookFromJson(jsonString);

import 'dart:convert';

List<Notebook> notebookFromJson(String str) =>
    List<Notebook>.from(json.decode(str).map((x) => Notebook.fromJson(x)));

String notebookToJson(List<Notebook> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Notebook {
  Notebook({
    required this.model,
    required this.price,
    required this.description,
    required this.reviews,
    required this.ratings,
    required this.image,
  });

  String model;
  String price;
  String description;
  String reviews;
  String ratings;
  String image;

  factory Notebook.fromJson(Map<String, dynamic> json) => Notebook(
        model: json["model"],
        price: json["price"],
        description: json["description"],
        reviews: json["reviews"],
        ratings: json["ratings"],
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "model": model,
        "price": price,
        "description": description,
        "reviews": reviews,
        "ratings": ratings,
        "image": image,
      };
}
