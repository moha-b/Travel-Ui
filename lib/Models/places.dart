// ignore_for_file: unused_import


import 'Activity.dart';

class Places {
  String imageUrl;
  String city;
  String country;
  String description;
  List<Activity> activities;

  Places({
    required this.imageUrl,
    required this.city,
    required this.country,
    required this.description,
    required this.activities,
  });
}

List<Places> destinations = [
  Places(
    imageUrl: 'images/destinations/new york.jpg',
    city: 'New york',
    country: 'America',
    description: 'Visit new york for an amazing and unforgettable adventure.',
    activities: activities,
  ),
  Places(
    imageUrl: 'images/destinations/paris.jpg',
    city: 'Paris',
    country: 'France',
    description: 'Visit Paris for an amazing and unforgettable adventure.',
    activities: activities,
  ),
  Places(
    imageUrl: 'images/destinations/italy.jpg',
    city: 'Milan',
    country: 'italy',
    description: 'Visit milan for an amazing and unforgettable adventure.',
    activities: activities,
  ),
  Places(
    imageUrl: 'images/destinations/egypt.jpg',
    city: 'Cairo',
    country: 'egypt',
    description: 'Visit egypt for an amazing and unforgettable adventure.',
    activities: activities,
  ),
  Places(
    imageUrl: 'images/destinations/japan.jpg',
    city: 'Tokyo',
    country: 'japan',
    description: 'Visit tokyo for an amazing and unforgettable adventure.',
    activities: activities,
  ),
  Places(
    imageUrl: 'images/destinations/spain.jpg',
    city: 'Madrid',
    country: 'spain',
    description: 'Visit madrid for an amazing and unforgettable adventure.',
    activities: activities,
  ),
];
