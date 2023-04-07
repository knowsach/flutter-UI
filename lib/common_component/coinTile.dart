import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CoinTile extends StatelessWidget {
  Map coinData;
  CoinTile({super.key, required this.coinData});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF191C24),
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SizedBox(
                width: 40,
                height: 40,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(coinData['image']),
                ),
              ),
              const SizedBox(width: 10),
              Text(
                coinData['currency'],
                style: TextStyle(color: Color(0xFFA7ACCB), fontSize: 14),
              )
            ],
          ),
          Column(
            children: [
              Text(
                coinData['amount'],
                style: const TextStyle(color: Color(0xFFA7ACCB), fontSize: 14),
              ),
              Text(coinData['krw'],
                  style:
                      const TextStyle(color: Color(0xFF4D536F), fontSize: 13))
            ],
          ),
        ],
      ),
    );
  }
}
