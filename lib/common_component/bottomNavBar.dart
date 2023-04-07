import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;

    return SizedBox(
      height: 60,
      width: screenWidth,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
              color: const Color(0xFF222531),
              width: screenWidth / 2,
              height: 60,
              child: const Center(
                child: Text(
                  'My Assets',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              )),
          Container(
              color: const Color(0xFF1E6DFF),
              width: screenWidth / 2,
              height: 60,
              child: const Center(
                child: Text('Withdrawal',
                    style: TextStyle(color: Colors.white, fontSize: 16)),
              ))
        ],
      ),
    );
  }
}
