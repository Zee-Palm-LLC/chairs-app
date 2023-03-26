import 'package:awesome_card/awesome_card.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: InkWell(
          onTap: () {
            Get.back();
          },
          child: Container(
            margin: const EdgeInsets.symmetric(vertical: 5),
            decoration: const BoxDecoration(
                color: Colors.brown,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(10),
                    bottomRight: Radius.circular(10))),
            child: const Icon(Icons.arrow_back_ios, color: Colors.white),
          ),
        ),
        centerTitle: true,
        title: const Text("Checkout",
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontSize: 20)),
      ),
      body: Column(children: [
        const SizedBox(height: 20),
        Center(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            decoration: BoxDecoration(
                color: Colors.brown, borderRadius: BorderRadius.circular(5)),
            child: const Text(
              "\$ 75.00",
              style: TextStyle(color: Colors.white, fontSize: 10),
            ),
          ),
        ),
        CarouselSlider(
          options: CarouselOptions(
              viewportFraction: 0.4,
              enlargeCenterPage: true,
              animateToClosest: true),
          items: ['assets/chair2.png', 'assets/chair3.png', 'assets/chair4.png']
              .map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Image.asset(i);
              },
            );
          }).toList(),
        ),
        const SizedBox(height: 20),
        const Text("Bettle Chair",
            style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.w600)),
        const Text("Elegant Furniture",
            style: TextStyle(color: Colors.grey, fontSize: 12)),
      ]),
      bottomSheet: Container(
          height: 340,
          width: double.maxFinite,
          decoration: const BoxDecoration(
              color: Colors.brown,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20))),
          child: Stack(
            alignment: Alignment.bottomRight,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),
                  Center(
                      child: Container(
                    height: 4,
                    width: 50,
                    color: Colors.white,
                  )),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.all(24),
                    child: RichText(
                        text: const TextSpan(
                            text: '\$',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                            children: [
                          TextSpan(
                              text: '245',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.w600)),
                          TextSpan(
                              text: '.00',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600)),
                        ])),
                  ),
                  SizedBox(
                      height: 150,
                      child: ListView.builder(
                        itemCount: 3,
                        scrollDirection: Axis.horizontal,
                        physics: const BouncingScrollPhysics(),
                        padding: const EdgeInsets.only(left: 19),
                        itemBuilder: (ctx, index) {
                          return Container(
                            width: 240,
                            margin: const EdgeInsets.symmetric(horizontal: 5),
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.1),
                                borderRadius: BorderRadius.circular(10)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      'Credit Card',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                          border:
                                              Border.all(color: Colors.white),
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      child: const Icon(Icons.circle,
                                          color: Colors.white, size: 14),
                                    )
                                  ],
                                ),
                                const SizedBox(height: 20),
                                Row(
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 5),
                                      decoration: BoxDecoration(
                                          color: Colors.black,
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      child: const Icon(
                                        Icons.credit_card,
                                        size: 15,
                                        color: Colors.amber,
                                      ),
                                    ),
                                    const SizedBox(width: 10),
                                    const Text("MasterCard",
                                        style: TextStyle(color: Colors.white)),
                                    const SizedBox(width: 10),
                                    const Text("****",
                                        style: TextStyle(color: Colors.white)),
                                    const Spacer(),
                                    const Text("1617",
                                        style: TextStyle(color: Colors.white)),
                                  ],
                                ),
                                const SizedBox(height: 30),
                                const Text("1617",
                                    style: TextStyle(color: Colors.white)),
                              ],
                            ),
                          );
                        },
                      ))
                ],
              ),
              InkWell(
                onTap: () {
                  Get.to(() => const CartView());
                },
                child: Container(
                  height: 100,
                  width: 70,
                  margin: const EdgeInsets.only(right: 34),
                  decoration: const BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10))),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.credit_card, color: Colors.white),
                      SizedBox(height: 10),
                      Text(
                        "Pay",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              )
            ],
          )),
    );
  }
}
