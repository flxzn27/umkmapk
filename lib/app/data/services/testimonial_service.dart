import 'dart:async';
import '../models/testimonial_model.dart';

class TestimonialService {
  /// Mengambil semua data testimoni (dummy untuk sementara)
  Future<List<Testimonial>> getAllTestimonials() async {
    // Simulasi delay seperti fetch dari API
    await Future.delayed(const Duration(seconds: 1));
    return Testimonial.dummyTestimonials;
  }

  /// Menghitung rata-rata rating dari semua testimoni
  Future<double> getAverageRating() async {
    final testimonials = await getAllTestimonials();
    if (testimonials.isEmpty) return 0.0;

    final totalRating = testimonials.fold<double>(
      0.0,
      (sum, item) => sum + item.rating,
    );
    return totalRating / testimonials.length;
  }

  /// (Opsional) Mengambil testimoni berdasarkan produk tertentu
  Future<List<Testimonial>> getTestimonialsByProduct(String productName) async {
    final testimonials = await getAllTestimonials();
    return testimonials
        .where((t) => t.product.toLowerCase() == productName.toLowerCase())
        .toList();
  }

  /// (Opsional) Menambahkan testimoni baru (jika nanti ingin fitur input)
  Future<void> addTestimonial(Testimonial testimonial) async {
    // Misal menambah ke list dummy — hanya simulasi
    Testimonial.dummyTestimonials.add(testimonial);
    await Future.delayed(const Duration(milliseconds: 500));
  }
}
