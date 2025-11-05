import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ContactController extends GetxController {
  final formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final messageController = TextEditingController();

  final contactInfo = <Map<String, dynamic>>[
    {
      'icon': Icons.location_on,
      'title': 'Alamat',
      'value': 'Jl. Raya Purwokerto No. 123\nPurwokerto, Jawa Tengah 53116',
    },
    {
      'icon': Icons.phone,
      'title': 'Telepon',
      'value': '+62 281 123 4567\n+62 812 3456 7890',
    },
    {
      'icon': Icons.email,
      'title': 'Email',
      'value': 'info@umkmlokal.com\nsupport@umkmlokal.com',
    },
    {
      'icon': Icons.schedule,
      'title': 'Jam Operasional',
      'value': 'Senin - Jumat: 08.00 - 17.00\nSabtu: 08.00 - 14.00',
    },
  ].obs;

  void submitForm() {
    if (formKey.currentState!.validate()) {
      Get.snackbar(
        'Berhasil',
        'Pesan Anda telah terkirim. Kami akan segera menghubungi Anda.',
        snackPosition: SnackPosition.BOTTOM,
        duration: const Duration(seconds: 3),
        backgroundColor: Colors.green,
        colorText: Colors.white,
      );

      // Clear form
      nameController.clear();
      emailController.clear();
      messageController.clear();
    }
  }

  @override
  void onClose() {
    nameController.dispose();
    emailController.dispose();
    messageController.dispose();
    super.onClose();
  }
}
