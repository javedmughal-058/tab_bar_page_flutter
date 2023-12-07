

import 'package:flutter/material.dart';
import 'package:tab_bar_page_flutter/pages/gallery_page.dart';
import 'package:tab_bar_page_flutter/pages/menu_page.dart';
import 'package:tab_bar_page_flutter/pages/property_page.dart';

Widget buildTabPage(String itemName) {
  switch (itemName.toLowerCase()) {
    case 'menu':
      return const MenuPage();
    case 'property':
      return const PropertyPage();
    case 'gallery':
      return const GalleryPage();
    default:
      return Center(
        child: Text(
          'Page for $itemName is not implemented',
          style: const TextStyle(fontSize: 20),
        ),
      );
  }
}