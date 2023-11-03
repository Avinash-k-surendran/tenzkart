import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../card/laptopCard.dart';
import '../components/Main tile.dart';
import '../provider/Gadgets Cart.dart';

class HpItems extends StatelessWidget {
  HpItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    var Hphome = context.watch<GadgetCartProvider>().Hphome;
    var Hpcart = context.watch<GadgetCartProvider>().cartall;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.black,
          onPressed: () => Navigator.push(context, MaterialPageRoute(
            builder: (context) {
              return laptopCartPage();
            },
          )),
          child:  Wrap(
              children: [
                Icon(
                  Icons.shopping_cart_sharp,
                  color: Colors.white,
                ),
                Text("${Hpcart.length}")
              ]
          ),
        ),
        body: Padding(
          padding:
          const EdgeInsets.only(left: 20, right: 20, bottom: 20, top: 30),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "HP LAPTOPS",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                GridView.builder(
                    itemCount: Hphome.length,
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2, childAspectRatio:0.8),
                    itemBuilder: (context, index) {
                      var iphone= Hphome[index];
                      return ItemTile(
                        ItemName: iphone.name,
                        ItemPrice: "${iphone.price}",
                        ImagePath: iphone.image,
                        color: Colors.green,
                        onPressed: () {
                          Provider.of<GadgetCartProvider>(context, listen: false)
                              .addToCart(iphone);
                        },
                      );
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}