// ignore_for_file: file_names

import 'Activity.dart';

class Hotel {
  String imageUrl;
  String name;
  String address;
  int price;
  List<Activity> activities;

  Hotel({
    required this.imageUrl,
    required this.name,
    required this.address,
    required this.price,
    required this.activities,
  });
}

final List<Hotel> hotels = [
  Hotel(
    imageUrl: 'images/hotel/hotel0.jpg',
    name: 'Crowne Plaza',
    address: '333, S. Figueroa Street, Los Angeles',
    price: 175,
    activities: activities,
  ),
  Hotel(
    imageUrl: 'images/hotel/hotel1.jpg',
    name: 'Emerald Bay Inn',
    address: '7023, Sunset Boulevard, los Angeles. ',
    price: 300,
    activities: activities,
  ),
  Hotel(
    imageUrl: 'images/hotel/hotel2.jpg',
    name: 'The New View',
    address: '59, West 44th Street, New York.',
    price: 240,
    activities: activities,
  ),
  Hotel(
    imageUrl: 'images/hotel/hotel3.jpg',
    name: 'Hotel Elite',
    address: '700, 5th Avenue, New York. ',
    price: 240,
    activities: activities,
  ),
  Hotel(
    imageUrl: 'images/hotel/hotel4.jpg',
    name: 'Sunset Lodge',
    address: '2237 Mason Street, San Francisco',
    price: 240,
    activities: activities,
  ),
  Hotel(
    imageUrl: 'images/hotel/hotel5.jpg',
    name: 'Ramada Limited & Suites',
    address: '60, East 54th Street, California. ',
    price: 240,
    activities: activities,
  ),
];
