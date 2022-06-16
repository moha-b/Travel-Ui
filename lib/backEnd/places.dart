// ignore_for_file: unused_import

class places {
  String imageUrl;
  String city;
  String country;
  String description;

  places({
    required this.imageUrl,
    required this.city,
    required this.country,
    required this.description,
  });
}

List<places> destinations = [
  places(
    imageUrl: 'images/new york.jpg',
    city: 'new york',
    country: 'America',
    description: 'Visit new york for an amazing and unforgettable adventure.',
  ),
  places(
    imageUrl: 'images/paris.jpg',
    city: 'Paris',
    country: 'France',
    description: 'Visit Paris for an amazing and unforgettable adventure.',
  ),
  places(
    imageUrl: 'images/italy.jpg',
    city: 'milan',
    country: 'italy',
    description: 'Visit milan for an amazing and unforgettable adventure.',
  ),
  places(
    imageUrl: 'images/egypt.jpg',
    city: 'cairo',
    country: 'egypt',
    description: 'Visit egypt for an amazing and unforgettable adventure.',
  ),
  places(
    imageUrl: 'images/japan.jpg',
    city: 'tokyo',
    country: 'japan',
    description: 'Visit tokyo for an amazing and unforgettable adventure.',
  ),
  places(
    imageUrl: 'images/spain.jpg',
    city: 'madrid',
    country: 'spain',
    description: 'Visit madrid for an amazing and unforgettable adventure.',
  ),
];
