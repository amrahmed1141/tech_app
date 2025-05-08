import 'package:flutter/material.dart';
import 'package:tech_app/constants/colors.dart';
import 'package:tech_app/constants/rating.dart';
import 'package:tech_app/model/product_model.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen(
      {super.key, required this.controllers, required this.index});

  final Product controllers;
  final int index;
  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  int quantity = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: kSelectCardBackgroundColor,
        actions: const [
          Padding(
            padding: EdgeInsets.all(8),
            child: Icon(
              Icons.favorite_border,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: Column(children: [
        SizedBox(
          height: 280,
          child: Stack(
            children: [
              Container(
                height: 200,
                color: kSelectCardBackgroundColor,
              ),
              Positioned(
                  left: 0,
                  bottom: 0,
                  right: 0,
                  top: 0,
                  child: Container(
                    alignment: Alignment.center,
                    child: Hero(
                      tag: widget.controllers.id,
                      child: Image.asset(
                        widget.controllers.imagePath,
                        height: 220,
                        width: 330,
                        fit: BoxFit.contain,
                      ),
                    ),
                  )),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 12),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              widget.controllers.name,
              style: TextStyle(
                  color: kPrimaryTextColor,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            const Rating(),
            const SizedBox(
              height: 10,
            ),
            Text(
              'Electronics is the branch of science and technology concerned with the design and use of circuits, devices, and systems that operate by controlling the flow of electrons or other charged particl',
              style: TextStyle(
                  color: kSecondTextColor,
                  fontWeight: FontWeight.w400,
                  fontSize: 16),
              textAlign: TextAlign.start,
              maxLines: 5,
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Quantity',
                  style: TextStyle(
                      color: kPrimaryTextColor,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    MaterialButton(
                      onPressed: () {
                        setState(() {
                          quantity++;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: kSecondaryColor,
                            borderRadius: BorderRadius.circular(20)),
                        child: const Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                    ),
                    Text(
                      quantity.toString(),
                      style: TextStyle(
                          color: kPrimaryTextColor,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    MaterialButton(
                      onPressed: () {
                        if(quantity>1){
                          setState(() {
                            quantity--;
                          });
                        }
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: kSecondaryColor,
                            borderRadius: BorderRadius.circular(20)),
                        child: const Icon(
                          Icons.remove,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 150,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '\$${(widget.controllers.price * quantity).toStringAsFixed(2)}',
                  style: TextStyle(
                      color: kPrimaryTextColor,
                      fontSize: 34,
                      fontWeight: FontWeight.bold),
                ),
                MaterialButton(
                  onPressed: () {},
                  color: kSecondaryColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 12, horizontal: 8),
                    child: Text(
                      'Add to Cart',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                )
              ],
            )
          ]),
        )
      ]),
    );
  }
}
