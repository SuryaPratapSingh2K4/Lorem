import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          top: 70.0,
          left: 20,
          right: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Lorem",
                    style: TextStyle(
                      fontSize: 24,
                      fontFamily: 'R.font.poppins',
                      fontWeight: FontWeight.w700,
                      color: Color(0xFFE29D34),
                    )),
                Icon(Icons.notification_add_rounded)
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            Image.asset("images.Shopping Cart.png"),
            const SizedBox(
              height: 8,
            ),
            const Text(
              "Always try to take pescribed medicines",
              style: TextStyle(
                color: Color(0xFFA33232),
                fontSize: 14,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w300,
                height: 0,
                letterSpacing: 1.05,
              ),
            )
          ],
        ),
      ),
    );
  }
}
