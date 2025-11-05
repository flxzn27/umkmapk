import 'package:get/get.dart';
import '../modules/home/home_binding.dart';
import '../modules/home/home_view.dart';
import '../modules/detail_product/detail_product_view.dart';
import '../modules/detail_product/detail_product_controller.dart';
import '../modules/testimonial/testimonial_view.dart';
import '../modules/testimonial/testimonial_controller.dart';
import '../modules/about/about_view.dart';
import '../modules/about/about_controller.dart';
import '../modules/contact/contact_view.dart';
import '../modules/contact/contact_controller.dart';

part 'app_route.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.DETAIL_PRODUCT,
      page: () => const DetailProductView(),
      binding: BindingsBuilder(() {
        Get.lazyPut<DetailProductController>(() => DetailProductController());
      }),
    ),
    GetPage(
      name: _Paths.TESTIMONIAL,
      page: () => const TestimonialView(),
      binding: BindingsBuilder(() {
        Get.lazyPut<TestimonialController>(() => TestimonialController());
      }),
    ),
    GetPage(
      name: _Paths.ABOUT,
      page: () => const AboutView(),
      binding: BindingsBuilder(() {
        Get.lazyPut<AboutController>(() => AboutController());
      }),
    ),
    GetPage(
      name: _Paths.CONTACT,
      page: () => const ContactView(),
      binding: BindingsBuilder(() {
        Get.lazyPut<ContactController>(() => ContactController());
      }),
    ),
  ];
}
