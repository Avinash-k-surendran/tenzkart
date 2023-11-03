import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../components/Main tile.dart';
import '../Card/PhoneCard.dart';
import '../provider/Gadgets Cart.dart';


class VivoItems extends StatelessWidget {
  VivoItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    var Vivohome = context.watch<GadgetCartProvider>().Vivohome;
    var Vivocart = context.watch<GadgetCartProvider>().cartall;

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
              return PhoneCartPage();
            },
          )),
          child:  Wrap(
              children: [
                Icon(
                  Icons.shopping_cart_sharp,
                  color: Colors.white,
                ),
                Text("${Vivocart.length}")
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
                  "VIVO PHONES",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                GridView.builder(
                    itemCount: Vivohome.length,
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2, childAspectRatio: 0.8),
                    itemBuilder: (context, index) {
                      var vivo= Vivohome[index];
                      return ItemTile(
                        ItemName: vivo.name,
                        ItemPrice: "${vivo.price}",
                        ImagePath: vivo.image,
                        color: Colors.green,
                        onPressed: () {
                          Provider.of<GadgetCartProvider>(context, listen: false)
                              .addToCart(vivo);
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