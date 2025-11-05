import '../models/product_model.dart';

class ProductService {
  // Simulasi API call untuk mendapatkan semua produk
  Future<List<Product>> getAllProducts() async {
    // Simulasi delay network
    await Future.delayed(const Duration(milliseconds: 500));
    return Product.dummyProducts;
  }

  // Mendapatkan produk berdasarkan ID
  Future<Product?> getProductById(String id) async {
    await Future.delayed(const Duration(milliseconds: 300));
    try {
      return Product.dummyProducts.firstWhere((product) => product.id == id);
    } catch (e) {
      return null;
    }
  }

  // Mendapatkan produk berdasarkan kategori
  Future<List<Product>> getProductsByCategory(String category) async {
    await Future.delayed(const Duration(milliseconds: 400));
    if (category == 'Semua') {
      return Product.dummyProducts;
    }
    return Product.dummyProducts
        .where((product) => product.category == category)
        .toList();
  }

  // Mendapatkan produk populer (rating tinggi)
  Future<List<Product>> getPopularProducts() async {
    await Future.delayed(const Duration(milliseconds: 300));
    var products = List<Product>.from(Product.dummyProducts);
    products.sort((a, b) => b.rating.compareTo(a.rating));
    return products.take(3).toList();
  }

  // Search produk berdasarkan nama
  Future<List<Product>> searchProducts(String query) async {
    await Future.delayed(const Duration(milliseconds: 400));
    if (query.isEmpty) return Product.dummyProducts;

    return Product.dummyProducts
        .where(
          (product) =>
              product.name.toLowerCase().contains(query.toLowerCase()) ||
              product.description.toLowerCase().contains(query.toLowerCase()),
        )
        .toList();
  }
}
