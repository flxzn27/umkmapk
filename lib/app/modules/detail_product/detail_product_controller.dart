import 'package:get/get.dart';
import '../../data/models/product_model.dart';

class DetailProductController extends GetxController {
  final product = Rx<Product?>(null);
  final quantity = 1.obs;

  @override
  void onInit() {
    super.onInit();
    product.value = Get.arguments as Product?;
  }

  void increaseQuantity() {
    if (quantity.value < (product.value?.stock ?? 0)) {
      quantity.value++;
    }
  }

  void decreaseQuantity() {
    if (quantity.value > 1) {
      quantity.value--;
    }
  }

  double get totalPrice {
    return (product.value?.price ?? 0) * quantity.value;
  }

  void addToCart() {
    Get.snackbar(
      'Berhasil',
      '${product.value?.name} ditambahkan ke keranjang',
      snackPosition: SnackPosition.BOTTOM,
      duration: const Duration(seconds: 2),
    );
  }
}
