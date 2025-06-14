import 'package:flutter/material.dart';

class TotalItemWidget extends StatelessWidget {
  const TotalItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xFF0E0E0E),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Color(0xFF787878), width: 1),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Subtotal(Rate x Qty)',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
                Text('', style: TextStyle(fontSize: 18, color: Colors.white)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
