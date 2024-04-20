import 'package:flutter/material.dart';

class Destination {
  String imageurl;
  String destinationName;
  String destinationCity;
  String destinationCountry;
  String destinationDescripation;
  Destination(
      {required this.destinationName,
      required this.destinationCity,
      required this.destinationCountry,
      required this.destinationDescripation,
      required this.imageurl});
}

//list of Destinations
List<Destination> Destinations = [
  Destination(
      destinationName: "Ubud",
      destinationCity: "Bali",
      destinationCountry: "Indoina",
      destinationDescripation: "A cultural hub renowned for its art markets,",
      imageurl:
          "https://plus.unsplash.com/premium_photo-1668883188861-39974ed9ad99?q=80&w=1964&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
  Destination(
      destinationName: " Uluwatu Temple",
      destinationCity: "Bali",
      destinationCountry: "Indoina",
      destinationDescripation:
          "Perched on a cliff overlooking the Indian Ocean",
      imageurl:
          "https://images.unsplash.com/photo-1537996194471-e657df975ab4?q=80&w=1938&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
  Destination(
      destinationName: "Mount Batur",
      destinationCity: "Bali",
      destinationCountry: "Indonisa",
      destinationDescripation:
          "Embark on a sunrise trek to the summit of Mount Batur for panoramic views",
      imageurl:
          "https://plus.unsplash.com/premium_photo-1664124888904-435121e89c74?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
  Destination(
      destinationName: "Heaven",
      destinationCity: "Goa",
      destinationCountry: "India",
      destinationDescripation:
          "galleries, and traditional Balinese dance performances",
      imageurl:
          "https://images.unsplash.com/photo-1527631746610-bca00a040d60?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
  Destination(
      destinationName: "Savaram",
      destinationCity: "Manali",
      destinationCountry: "North",
      destinationDescripation: "Snow Place ",
      imageurl:
          "https://images.unsplash.com/photo-1568849676085-51415703900f?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
];
