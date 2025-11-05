import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'app/routes/app_pages.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Jika nanti perlu inisialisasi async (SharedPreferences, DB, dll),
  // tambahkan di sini. Contoh:
  // await SomeInitService.init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'UMKM APK',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
        useMaterial3: false,
        appBarTheme: const AppBarTheme(centerTitle: true, elevation: 1),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute:
          AppPages.INITIAL, // AppPages.INITIAL disediakan di app_pages.dart
      getPages: AppPages.routes,
      // fallback route jika nama route tidak ditemukan
      unknownRoute: GetPage(
        name: '/not-found',
        page: () => Scaffold(
          appBar: AppBar(title: const Text('Halaman tidak ditemukan')),
          body: const Center(child: Text('404 — Route tidak ditemukan')),
        ),
      ),
    );
  }
}
