import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../card/laptopCard.dart';
import '../components/Main tile.dart';
import '../provider/Gadgets Cart.dart';

class SAMSUNGItems extends StatelessWidget {
  SAMSUNGItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    var SAMSUNGhome = context.watch<GadgetCartProvider>().SAMSUNGhome;
    var SAMSUNGcart = context.watch<GadgetCartProvider>().cartall;

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
                Text("${SAMSUNGcart.length}")
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
                  "SAMSUNG TV'S",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                GridView.builder(
                    itemCount: SAMSUNGhome.length,
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2, childAspectRatio:0.8),
                    itemBuilder: (context, index) {
                      var iphone= SAMSUNGhome[index];
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