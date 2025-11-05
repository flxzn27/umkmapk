import 'package:get/get.dart';
import '../../data/models/product_model.dart';
import '../../data/services/product_service.dart';

class HomeController extends GetxController {
  final ProductService _productService = ProductService();

  final products = <Product>[].obs;
  final filteredProducts = <Product>[].obs;
  final selectedCategory = 'Semua'.obs;
  final isLoading = false.obs;

  final categories = <String>[
    'Semua',
    'Minuman',
    'Fashion',
    'Makanan',
    'Kesehatan',
    'Aksesori',
  ].obs;

  @override
  void onInit() {
    super.onInit();
    loadProducts();
  }

  Future<void> loadProducts() async {
    try {
      isLoading.value = true;
      final result = await _productService.getAllProducts();
      products.value = result;
      filteredProducts.value = result;
    } catch (e) {
      Get.snackbar(
        'Error',
        'Gagal memuat produk',
        snackPosition: SnackPosition.BOTTOM,
      );
    } finally {
      isLoading.value = false;
    }
  }

  Future<void> filterByCategory(String category) async {
    try {
      selectedCategory.value = category;
      isLoading.value = true;
      final result = await _productService.getProductsByCategory(category);
      filteredProducts.value = result;
    } catch (e) {
      Get.snackbar(
        'Error',
        'Gagal memfilter produk',
        snackPosition: SnackPosition.BOTTOM,
      );
    } finally {
      isLoading.value = false;
    }
  }
}
