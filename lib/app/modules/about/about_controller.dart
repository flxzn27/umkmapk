import 'package:get/get.dart';

class AboutController extends GetxController {
  final features = <Map<String, dynamic>>[
    {
      'icon': '✅',
      'title': 'Produk Berkualitas',
      'description':
          'Semua produk dipilih dengan cermat untuk memastikan kualitas terbaik',
    },
    {
      'icon': '🚚',
      'title': 'Pengiriman Cepat',
      'description':
          'Kami menjamin pengiriman tepat waktu ke seluruh Indonesia',
    },
    {
      'icon': '💯',
      'title': '100% Original',
      'description': 'Produk asli langsung dari pengrajin dan produsen lokal',
    },
    {
      'icon': '🤝',
      'title': 'Layanan Terpercaya',
      'description': 'Kepuasan pelanggan adalah prioritas utama kami',
    },
  ].obs;

  final stats = <Map<String, dynamic>>[
    {'number': '500+', 'label': 'Produk'},
    {'number': '1000+', 'label': 'Pelanggan'},
    {'number': '50+', 'label': 'Mitra UMKM'},
    {'number': '4.8', 'label': 'Rating'},
  ].obs;
}
