import 'package:flutter/material.dart';
import '../../LG.dart';
import '../../PANASONIC.dart';
import '../../SAMSUNGTV.dart';
import '../../SONY.dart';
import '../widgets/category Widgets.dart';

class TvCategory extends StatelessWidget {
  const TvCategory({Key? key}) : super(key: key);

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
                    const Text("TenzKart",style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),),
                    const SizedBox(
                      height: 10,
                    ),
                    // const Text(
                    //   " Best Tv for you",
                    //   style: TextStyle(
                    //     fontSize: 30,
                    //     fontWeight: FontWeight.bold,
                    //   ),
                    // ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Divider(
                      thickness: 4,
                    ),
                    const Text(
                      "Tv Categories",
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
                              CategoryName: "SONY",
                              ImagePath: "assets/Logo/sony.png",
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (context) {
                                    return SonyItems();
                                  },
                                ));
                              },
                              color: Colors.green,
                            ),
                            CategoryItemTile(
                              CategoryName: "SAMSUNG",
                              ImagePath: "assets/Logo/Samsung.png",
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (context) {
                                    return SAMSUNGItems();
                                  },
                                ));
                              },
                              color: Colors.green,
                            ),
                            CategoryItemTile(
                              CategoryName: "PANASONIC",
                              ImagePath: "assets/Logo/panasonic.png",
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (context) {
                                    return PanasonicItems();
                                  },
                                ));
                              },
                              color: Colors.green,
                            ),
                            CategoryItemTile(
                              CategoryName: "LG",
                              ImagePath: "assets/Logo/LG.png",
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (context) {
                                    return LgItems();
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