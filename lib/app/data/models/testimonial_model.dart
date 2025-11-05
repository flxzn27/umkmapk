class Testimonial {
  final String id;
  final String name;
  final String message;
  final double rating;
  final String date;
  final String product;

  Testimonial({
    required this.id,
    required this.name,
    required this.message,
    required this.rating,
    required this.date,
    required this.product,
  });

  static List<Testimonial> dummyTestimonials = [
    Testimonial(
      id: '1',
      name: 'Budi Santoso',
      message:
          'Kopi arabicanya mantap banget! Rasanya autentik dan aromanya bikin ketagihan. Pasti order lagi.',
      rating: 5.0,
      date: '2 hari yang lalu',
      product: 'Kopi Arabica Premium',
    ),
    Testimonial(
      id: '2',
      name: 'Siti Nurhaliza',
      message:
          'Batik tulisnya bagus sekali, motifnya detail dan kualitas kainnya premium. Sangat puas!',
      rating: 5.0,
      date: '1 minggu yang lalu',
      product: 'Batik Tulis Banyumas',
    ),
    Testimonial(
      id: '3',
      name: 'Ahmad Rizki',
      message:
          'Keripik tempenya enak banget, renyah dan bumbunya pas. Cocok buat camilan nonton.',
      rating: 4.5,
      date: '3 hari yang lalu',
      product: 'Keripik Tempe Renyah',
    ),
    Testimonial(
      id: '4',
      name: 'Dewi Lestari',
      message:
          'Madu murninya berkualitas, rasanya manis alami dan packaging rapi. Recommended!',
      rating: 5.0,
      date: '5 hari yang lalu',
      product: 'Madu Murni Hutan',
    ),
    Testimonial(
      id: '5',
      name: 'Eko Prasetyo',
      message:
          'Tasnya unik dan kuat, anyamannya rapi. Bangga pakai produk lokal!',
      rating: 4.0,
      date: '1 minggu yang lalu',
      product: 'Tas Anyaman Bambu',
    ),
  ];
}
