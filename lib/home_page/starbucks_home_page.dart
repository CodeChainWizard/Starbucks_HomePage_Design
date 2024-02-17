import 'package:flutter/material.dart';

class StarBucksHomePage extends StatefulWidget {
  const StarBucksHomePage({super.key});

  @override
  State<StarBucksHomePage> createState() => _StarBucksHomePageState();
}

class _StarBucksHomePageState extends State<StarBucksHomePage> {
  late PageController _pageController;

  @override
  void initState(){
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose(){
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.green,
              ),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 50.0, left: 20.0, right: 15.0),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "StarBuck",
                          style: TextStyle(
                              fontSize: 22.0, fontWeight: FontWeight.bold),
                        ),
                        Icon(Icons.shopping_cart_checkout_outlined),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 5.0),
                    child: Row(
                      children: [
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Stressed, blessed",
                              style: TextStyle(
                                  fontSize: 28.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  shadows: [
                                    Shadow(
                                      color: Colors.black,
                                      offset: Offset(2.0, 2.0),
                                      blurRadius: 2.0,
                                    ),
                                  ]),
                            ),
                            Text("and Coffee",
                                style: TextStyle(
                                  fontSize: 28.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  shadows: [
                                    Shadow(
                                      color: Colors.black,
                                      offset: Offset(2.0, 2.0),
                                      blurRadius: 2.0,
                                    ),
                                  ],
                                )),
                            Text("obsessed",
                                style: TextStyle(
                                  fontSize: 28.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  shadows: [
                                    Shadow(
                                      color: Colors.black,
                                      offset: Offset(2.0, 2.0),
                                      blurRadius: 2.0,
                                    ),
                                  ],
                                )),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            // Adjust the borderRadius as needed
                            child: const Stack(
                              children: [
                                Image(
                                  image: AssetImage(
                                      'assets/images/starbucks_1.png'),
                                  width: 150,
                                  height: 250,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 450.0,
            child: PageView(
             physics: const BouncingScrollPhysics(),
              controller: _pageController,
              scrollDirection: Axis.horizontal,
              children: [
                _listScrollEffect("assets/images/starbucks_1.png", "Espresso"),
                _listScrollEffect("assets/images/starbucks_2.png", "Latte"),
                _listScrollEffect("assets/images/starbucks_3.png", "Cappuccino"),
                _listScrollEffect("assets/images/starbucks_4.png", "Mocha"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget _listScrollEffect(String imgPath, String imgName) {
  return Container(
    width: 400.0,
    margin: EdgeInsets.all(10),
    child: Column(
      children: [
        Image.asset(
          imgPath,
          width: 300,
          height: 350,
          fit: BoxFit.fill,
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          imgName,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        )
      ],
    ),
  );
}
