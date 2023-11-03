import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../card/laptopCard.dart';
import '../components/Main tile.dart';
import '../provider/Gadgets Cart.dart';

class RadoItems extends StatelessWidget {
  RadoItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    var Radohome = context.watch<GadgetCartProvider>().Radohome;
    var Radocart = context.watch<GadgetCartProvider>().cartall;

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
                Text("${Radocart.length}")
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
                  "RADO WATCHES",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                GridView.builder(
                    itemCount: Radohome.length,
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2, childAspectRatio:0.8),
                    itemBuilder: (context, index) {
                      var iphone= Radohome[index];
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