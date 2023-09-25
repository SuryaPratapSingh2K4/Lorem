import 'package:flutter/material.dart';
import 'package:lorem/cart.dart';
//import 'package:lorem/widget/Medicine_name.dart';

class MedicinePage extends StatelessWidget {
  const MedicinePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 70.0,
        left: 20,
        right: 20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("Lorem",
                  style: TextStyle(
                    fontSize: 24,
                    fontFamily: 'R.font.poppins',
                    fontWeight: FontWeight.w700,
                    color: Color(0xFFE29D34),
                  )),
              GestureDetector(
                child: const Icon(
                  Icons.shopping_cart_checkout_outlined,
                ),
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) {
                  return const Cart();
                })),
              )
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          const Text("AYUSH Medicines for general purpose",
              style: TextStyle(
                fontSize: 21,
                fontFamily: 'R.font.poppins',
                fontWeight: FontWeight.w600,
                color: Color(0xFF060606),
              )),
          const SizedBox(
            height: 12,
          ),
          const Text("Always try to take pescribed medicines",
              style: TextStyle(
                fontSize: 14,
                fontFamily: 'R.font.poppins',
                fontWeight: FontWeight.w300,
                color: Color(0xFFA43232),
                letterSpacing: 1.05,
              )),
          const SizedBox(
            height: 18,
          ),
        ],
      ),
    );
  }
}
