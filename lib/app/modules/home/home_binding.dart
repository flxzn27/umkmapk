import 'package:get/get.dart';
import 'home_controller.dart';
import '../../data/services/product_service.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    // Daftarkan service dan controller yang dibutuhkan di HomeView
    Get.lazyPut<ProductService>(() => ProductService());
    Get.lazyPut<HomeController>(() => HomeController());
  }
}
