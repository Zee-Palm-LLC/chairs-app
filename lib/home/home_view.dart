import 'package:chairs_app/cart/cart_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int selectedItem = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Container(
          margin: const EdgeInsets.symmetric(vertical: 5),
          decoration: const BoxDecoration(
              color: Colors.brown,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10),
                  bottomRight: Radius.circular(10))),
          child: const Icon(Icons.arrow_back_ios, color: Colors.white),
        ),
        centerTitle: true,
        title: Column(
          children: const [
            Text("Chairs",
                style: TextStyle(
                    color: Colors.black, fontWeight: FontWeight.w600)),
            Text("Elegant Furniture",
                style: TextStyle(color: Colors.grey, fontSize: 12)),
          ],
        ),
        actions: const [
          Icon(Icons.favorite_outline, color: Colors.brown),
          SizedBox(width: 10)
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset('assets/chair.png'),
          const SizedBox(height: 100),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Text("Bettle Chair",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 34,
                    fontWeight: FontWeight.w600)),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Row(
              children: [
                const Icon(Icons.star, color: Colors.amber, size: 15),
                const Icon(Icons.star, color: Colors.amber, size: 15),
                const Icon(Icons.star, color: Colors.amber, size: 15),
                const Icon(Icons.star, color: Colors.amber, size: 15),
                const Icon(Icons.star, color: Colors.grey, size: 15),
                const SizedBox(width: 20),
                const Text(
                  "249 Reviews",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.w600),
                ),
                const Spacer(),
                Container(
                    padding: const EdgeInsets.all(1),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.grey)),
                    child: const Icon(Icons.keyboard_arrow_down,
                        size: 15, color: Colors.grey))
              ],
            ),
          )
        ],
      ),
      bottomSheet: Container(
        height: 240,
        decoration: const BoxDecoration(
            color: Colors.brown,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                RichText(
                    text: const TextSpan(
                        text: '\$',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                        children: [
                      TextSpan(
                          text: '75',
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
                const SizedBox(height: 10),
                const Text("Price per unit",
                    style: TextStyle(color: Colors.white, fontSize: 12)),
                const SizedBox(height: 50),
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        if (selectedItem > 1) {
                          selectedItem--;
                          setState(() {});
                        }
                      },
                      child: Container(
                        alignment: Alignment.center,
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: Colors.white)),
                        child: const Icon(Icons.remove,
                            color: Colors.white, size: 14),
                      ),
                    ),
                    const SizedBox(width: 20),
                    Text(selectedItem.toString(),
                        style:
                            const TextStyle(color: Colors.white, fontSize: 17)),
                    const SizedBox(width: 20),
                    InkWell(
                      onTap: () {
                        if (selectedItem >= 1) {
                          selectedItem++;
                          setState(() {});
                        }
                      },
                      child: Container(
                        alignment: Alignment.center,
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: Colors.white)),
                        child: const Icon(Icons.add,
                            color: Colors.white, size: 14),
                      ),
                    ),
                  ],
                )
              ],
            ),
            Column(
              children: [
                const Spacer(),
                InkWell(
                  onTap: (){
                    Get.to(()=>const CartView());
                  },
                  child: Container(
                    height: 100,
                    width: 70,
                    decoration: const BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(Icons.shopping_cart, color: Colors.white),
                        SizedBox(height: 10),
                        Text(
                          "Buy",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
