// ignore_for_file: unused_import

import 'package:travel/backEnd/Activity.dart';

class places {
  String imageUrl;
  String city;
  String country;
  String description;
  List<Activity> activities;

  places({
    required this.imageUrl,
    required this.city,
    required this.country,
    required this.description,
    required this.activities,
  });
}

List<places> destinations = [
  places(
    imageUrl: 'images/destinations/new york.jpg',
    city: 'New york',
    country: 'America',
    description: 'Visit new york for an amazing and unforgettable adventure.',
    activities: activities,
  ),
  places(
    imageUrl: 'images/destinations/paris.jpg',
    city: 'Paris',
    country: 'France',
    description: 'Visit Paris for an amazing and unforgettable adventure.',
    activities: activities,
  ),
  places(
    imageUrl: 'images/destinations/italy.jpg',
    city: 'Milan',
    country: 'italy',
    description: 'Visit milan for an amazing and unforgettable adventure.',
    activities: activities,
  ),
  places(
    imageUrl: 'images/destinations/egypt.jpg',
    city: 'Cairo',
    country: 'egypt',
    description: 'Visit egypt for an amazing and unforgettable adventure.',
    activities: activities,
  ),
  places(
    imageUrl: 'images/destinations/japan.jpg',
    city: 'Tokyo',
    country: 'japan',
    description: 'Visit tokyo for an amazing and unforgettable adventure.',
    activities: activities,
  ),
  places(
    imageUrl: 'images/destinations/spain.jpg',
    city: 'Madrid',
    country: 'spain',
    description: 'Visit madrid for an amazing and unforgettable adventure.',
    activities: activities,
  ),
];
//
List<Activity> activities = [
  Activity(
    imageUrl: 'images/activities/NewYork.jpg',
    name: 'St. Mark\'s Basilica',
    type: 'Sightseeing Tour',
    startTimes: ['9:00 am', '11:00 am'],
    rating: 5,
    price: 30,
  ),
  Activity(
    imageUrl: 'images/activities/gondola.jpg',
    name: 'Walking Tour and Gonadola Ride',
    type: 'Sightseeing Tour',
    startTimes: ['11:00 pm', '1:00 pm'],
    rating: 4,
    price: 210,
  ),
  Activity(
    imageUrl: 'images/activities/murano.jpg',
    name: 'Murano and Burano Tour',
    type: 'Sightseeing Tour',
    startTimes: ['12:30 pm', '2:00 pm'],
    rating: 3,
    price: 125,
  ),
  Activity(
    imageUrl: 'images/activities/lil.jpg',
    name: 'Murano and Burano Tour',
    type: 'Sightseeing Tour',
    startTimes: ['12:30 pm', '2:00 pm'],
    rating: 3,
    price: 125,
  ),
  Activity(
    imageUrl: 'images/activities/madrid.jpg',
    name: 'Murano and Burano Tour',
    type: 'Sightseeing Tour',
    startTimes: ['12:30 pm', '2:00 pm'],
    rating: 3,
    price: 125,
  ),
  Activity(
    imageUrl: 'images/activities/paris.jpg',
    name: 'Murano and Burano Tour',
    type: 'Sightseeing Tour',
    startTimes: ['12:30 pm', '2:00 pm'],
    rating: 3,
    price: 125,
  ),
];
