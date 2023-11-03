import 'package:flutter/material.dart';

class ProductItemCard extends StatelessWidget {
  final String title;
  final String price;
  final String imageUrl;
  final Function()? onPressed;
  const ProductItemCard(
      {super.key,
        required this.title,
        required this.price,
        required this.imageUrl, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      height: 250,
      width: 170,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.black54)),
      child: Column(
        children: [
          Container(
            height: 150,
            width: 185,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10), topRight: Radius.circular(10)),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(imageUrl),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Text(
              title,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Text(
              "₹$price",
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child:
            ElevatedButton(
              onPressed: onPressed,
              child: const Text("Add to Cart"), ),

          ),

        ],
      ),
    );
  }
}