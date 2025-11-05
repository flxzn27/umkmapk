part of 'app_pages.dart';

abstract class Routes {
  Routes._();
  static const HOME = _Paths.HOME;
  static const DETAIL_PRODUCT = _Paths.DETAIL_PRODUCT;
  static const TESTIMONIAL = _Paths.TESTIMONIAL;
  static const ABOUT = _Paths.ABOUT;
  static const CONTACT = _Paths.CONTACT;
}

abstract class _Paths {
  _Paths._();
  static const HOME = '/home';
  static const DETAIL_PRODUCT = '/detail-product';
  static const TESTIMONIAL = '/testimonial';
  static const ABOUT = '/about';
  static const CONTACT = '/contact';
}