import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iconsax/iconsax.dart';

AppBar appBarItems() {
    return AppBar(
        leading: IconButton(
            onPressed: () {},
            icon: SvgPicture.asset('assets/images/icon_menu.svg')),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Iconsax.search_normal))
        ]);
  }