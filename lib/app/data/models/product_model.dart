class Product {
  final String id;
  final String name;
  final String description;
  final double price;
  final String category;
  final String image;
  final int stock;
  final double rating;

  Product({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.category,
    required this.image,
    required this.stock,
    required this.rating,
  });

  static List<Product> dummyProducts = [
    Product(
      id: '1',
      name: 'Kopi Arabica Premium',
      description:
          'Kopi arabica pilihan dari perkebunan lokal Purwokerto dengan cita rasa yang khas dan aroma yang menggugah selera.',
      price: 85000,
      category: 'Minuman',
      image: '../../../assets/images/kopi_arabica.jpg',
      stock: 50,
      rating: 4.8,
    ),
    Product(
      id: '2',
      name: 'Batik Tulis Banyumas',
      description:
          'Batik tulis asli Banyumas dengan motif tradisional yang elegan, cocok untuk acara formal maupun kasual.',
      price: 350000,
      category: 'Fashion',
      image: '../../../assets/images/batik_banyumas.jpeg',
      stock: 20,
      rating: 4.9,
    ),
    Product(
      id: '3',
      name: 'Keripik Tempe Renyah',
      description:
          'Keripik tempe dengan bumbu rahasia yang gurih dan renyah, camilan favorit keluarga Indonesia.',
      price: 25000,
      category: 'Makanan',
      image: '../../../assets/images/kripik_tempe.jpg',
      stock: 100,
      rating: 4.7,
    ),
    Product(
      id: '4',
      name: 'Madu Murni Hutan',
      description:
          'Madu murni dari hutan pegunungan, kaya nutrisi dan berkhasiat untuk kesehatan.',
      price: 120000,
      category: 'Kesehatan',
      image: '../../../assets/images/madu_hutan.jpg',
      stock: 30,
      rating: 4.9,
    ),
    Product(
      id: '5',
      name: 'Tas Anyaman Bambu',
      description:
          'Tas anyaman bambu handmade yang ramah lingkungan, cocok untuk gaya hidup modern.',
      price: 150000,
      category: 'Aksesori',
      image: '../../../assets/images/tas_bambu.jpg',
      stock: 15,
      rating: 4.6,
    ),
    Product(
      id: '6',
      name: 'Sambal Pecel Khas',
      description:
          'Sambal pecel dengan resep turun temurun, pedas nikmat untuk lauk sayuran.',
      price: 35000,
      category: 'Makanan',
      image: '../../../assets/images/sambal_pecel.jpg',
      stock: 80,
      rating: 4.8,
    ),
  ];
}
