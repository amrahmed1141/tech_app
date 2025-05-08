import 'package:flutter/material.dart';

 Container homewelcomeText() {
    return Container(
            padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 8),
            child: const Text(
              'Welcome to \nTech® Accessories',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
          );
  }