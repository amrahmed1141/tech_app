import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tech_app/constants/colors.dart';
import 'package:tech_app/screen/home/home_screen.dart';
import 'package:tech_app/screen/orders/orders_screen.dart';
import 'package:tech_app/screen/profile/profile_screen.dart';
import 'package:tech_app/screen/wallet/wallet_screen.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int currentIndex = 0;

  late List<Widget> pages;
  late HomeScreen homePage;
  late OrdersScreen orders;
  late WalletScreen wallet;
  late ProfileScreen profle;

  @override
  void initState() {
    homePage = const HomeScreen();
    orders = const OrdersScreen();
    wallet = const WalletScreen();
    profle = const ProfileScreen();

    pages = [homePage, orders, wallet, profle];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: GNav(

          backgroundColor:Color.fromARGB(20, 0, 0, 0),
          color: kSecondaryColor,
          activeColor: Colors.white,
          selectedIndex: currentIndex,
          rippleColor: kSecondaryColor,
          hoverColor: Colors.white,
          duration: const Duration(milliseconds: 180),
          curve: Curves.easeInOut,
          haptic: true,
          tabBorderRadius: 15,
        tabBackgroundColor: kSecondaryColor,
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 23),

          onTabChange: (int index) {
            setState(() {
              currentIndex = index;
            });
          },
          tabs: const [
            GButton(
              icon: Iconsax.home,
              text: 'Home',
            ),
            GButton(
              icon: Iconsax.shopping_bag,
              text: 'Orders',
            ),
            GButton(
              icon: Iconsax.wallet,
              text: 'Wallet',
            ),
            GButton(
              icon: Iconsax.user,
              text: 'Profile',
            ),
          ]),
          body: pages[currentIndex],
    );
  }
}
