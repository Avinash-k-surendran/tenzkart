import 'package:flutter/material.dart';
import 'package:tenzkart/screens/category/views/phone%20Views.dart';
import 'package:tenzkart/screens/category/views/tv%20views.dart';
import 'package:tenzkart/screens/category/views/watch%20views.dart';

import '../widgets/category Widgets.dart';
import 'Laptop Views.dart';


class GadgetsCategory extends StatelessWidget {
  const GadgetsCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Padding(
                padding: const EdgeInsets.only(
                    left: 20, right: 20, bottom: 20, top: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("TenzKart",style:
                    TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,

                    ),),
                    const SizedBox(
                      height: 10,
                    ),
                    // const Text(
                    //   "when you have a tenzor nothing can stop you",
                    //  style: TextStyle(
                    //     fontSize: 30,
                    //     fontWeight: FontWeight.bold,
                    //   ),
                    //
                    //
                    // ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Divider(
                      thickness: 4,
                    ),
                    const Text(
                      "Gadgets Categories",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SingleChildScrollView(
                      physics: ScrollPhysics(),
                      child: GridView(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,childAspectRatio: .7),
                          children: [
                            CategoryItemTile(
                              CategoryName: "PHONE",
                              ImagePath: "assets/Logo/Phones.jpg",
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (context) {
                                    return phoneCategory();
                                  },
                                ));
                              },
                              color: Colors.green,
                            ),
                            CategoryItemTile(
                              CategoryName: "LAPTOP",
                              ImagePath: "assets/Logo/laptops.jpg",
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (context) {
                                    return laptopCategory();
                                  },
                                ));
                              },
                              color: Colors.green,
                            ),
                            CategoryItemTile(
                              CategoryName: "TV",
                              ImagePath: "assets/Logo/Tv.png",
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (context) {
                                    return TvCategory();
                                  },
                                ));
                              },
                              color: Colors.green,
                            ),
                            CategoryItemTile(
                              CategoryName: "WATCHES",
                              ImagePath: "assets/Logo/watches.jpg",
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (context) {
                                    return WatchCategory();
                                  },
                                ));
                              },
                              color: Colors.green,
                            ),
                          ]),
                    )
                  ],
                ))));
  }
}