import 'package:flutter/material.dart';
import 'package:tech_app/constants/colors.dart';
import 'package:tech_app/constants/rating.dart';
import 'package:tech_app/model/product_model.dart';
import 'package:tech_app/screen/details/details_screen.dart';

class Ps5Screen extends StatefulWidget {
  const Ps5Screen({super.key});

  @override
  State<Ps5Screen> createState() => _Ps5ScreenState();
}

class _Ps5ScreenState extends State<Ps5Screen> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: ListView.builder(
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.all(5),
            itemCount: ps5.length,
            itemBuilder: (context, index) {
              return productsItems(index);
            },
          ),
        ),
      ),
    );
  }

  GestureDetector productsItems(int index) {
    double scale = 1.1;
    Color backgroundColor = const Color.fromARGB(10, 0, 0, 0);
    Color textColor = kPrimaryTextColor;
    if (currentIndex == index) {
      backgroundColor = kSelectCardBackgroundColor;
      textColor = Colors.white;
      scale = 1.35;
    }
    final controllers = ps5[index];
    return GestureDetector(
      onTap: () {
        if (currentIndex == index) {
        } else {
          setState(() {
            currentIndex = index;
          });
        }
      },
      child: Padding(
        padding: const EdgeInsets.only(top: 12),
        child: Row(
          children: [
            Container(
              height: 160,
              width: 250 * scale,
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Stack(
                children: [
                  Container(
                    height: 140,
                    width: 220 * scale,
                    decoration: BoxDecoration(
                      color: backgroundColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(10, 0, 0, 0),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          padding: const EdgeInsets.symmetric(
                            vertical: 10,
                            horizontal: 20,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 5 * scale),
                              Padding(
                                padding: const EdgeInsets.only(right: 80),
                                child: Text(
                                  controllers.name,
                                  maxLines: 2,
                                  style: TextStyle(
                                    color: textColor,
                                    fontSize: 14 * scale,
                                    fontWeight: FontWeight.bold,
                                    height: 1.5,
                                  ),
                                ),
                              ),
                              SizedBox(height: 5 * scale),
                              const Rating(),
                              SizedBox(height: 5 * scale),
                              Text(
                                '\$${controllers.price}',
                                style: TextStyle(
                                  color: textColor,
                                  fontSize: 16 * scale,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          right: 0,
                          bottom: 0,
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => DetailsScreen(
                                          controllers: controllers,
                                          index: index)));
                            },
                            child: Container(
                              padding: const EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                color: kSecondaryColor,
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(14),
                                  bottomRight: Radius.circular(21),
                                ),
                              ),
                              child: const Icon(
                                Icons.arrow_forward,
                                color: Colors.white,
                                size: 20,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    right: 0,
                    top: 0,
                    child: Container(
                      alignment: Alignment.center,
                      child: Hero(
                        tag: controllers.id,
                        child: Image.asset(
                          controllers.imagePath,
                          height: 70 * scale,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
