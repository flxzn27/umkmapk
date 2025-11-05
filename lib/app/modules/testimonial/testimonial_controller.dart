import 'package:get/get.dart';
import '../../data/models/testimonial_model.dart';
import '../../data/services/testimonial_service.dart';

class TestimonialController extends GetxController {
  final TestimonialService _testimonialService = TestimonialService();
  
  final testimonials = <Testimonial>[].obs;
  final isLoading = false.obs;
  final averageRating = 0.0.obs;

  @override
  void onInit() {
    super.onInit();
    loadTestimonials();
  }

  Future<void> loadTestimonials() async {
    try {
      isLoading.value = true;
      final result = await _testimonialService.getAllTestimonials();
      testimonials.value = result;
      
      final rating = await _testimonialService.getAverageRating();
      averageRating.value = rating;
    } catch (e) {
      Get.snackbar(
        'Error',
        'Gagal memuat testimoni',
        snackPosition: SnackPosition.BOTTOM,
      );
    } finally {
      isLoading.value = false;
    }
  }
}