class Cappucino {
  final String name;
  final double price;
  final String image;

  Cappucino({required this.name, required this.price, required this.image});
}

final List<Cappucino> _cappucino = [
  Cappucino(
    name: 'Iced Cappucino',
    price: 15,
    image:
        'https://www.starbucks.co.th/stb-media/2020/08/45.Iced-Cappuccino1080.png',
  ),
  Cappucino(
      name: 'Hot Cappucino',
      price: 8,
      image:
          'https://static.vecteezy.com/system/resources/previews/001/979/032/large_2x/hot-cappuccino-coffee-with-leave-shaped-art-on-a-wooden-table-free-photo.JPG'),
];

List<Cappucino> get cappucino {
  return _cappucino;
}

// int get list {
//   return cappucino.length;
// }
