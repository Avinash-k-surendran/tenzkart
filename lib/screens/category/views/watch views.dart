import 'package:flutter/material.dart';
import '../../Fast track.dart';
import '../../ROLEX.dart';
import '../../RaADO.dart';
import '../../hubolt.dart';
import '../widgets/category Widgets.dart';

class WatchCategory extends StatelessWidget {
  const WatchCategory({Key? key}) : super(key: key);

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
                    //   " Best Watches for you",
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
                      "Watch Categories",
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
                              CategoryName: "ROLLEX",
                              ImagePath: "assets/Logo/rollex.jpg",
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (context) {
                                    return RollexItems();
                                  },
                                ));
                              },
                              color: Colors.green,
                            ),
                            CategoryItemTile(
                              CategoryName: "RADO",
                              ImagePath: "assets/Logo/rado.png",
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (context) {
                                    return RadoItems();
                                  },
                                ));
                              },
                              color: Colors.green,
                            ),
                            CategoryItemTile(
                              CategoryName: "HUBOLT",
                              ImagePath: "assets/Logo/hubolt.png",
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (context) {
                                    return HuboltItems();
                                  },
                                ));
                              },
                              color: Colors.green,
                            ),
                            CategoryItemTile(
                              CategoryName: "FASTRACK",
                              ImagePath: "assets/Logo/fastrack.png",
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (context) {
                                    return FastrackItems();
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