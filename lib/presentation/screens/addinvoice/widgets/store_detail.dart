import 'package:flutter/material.dart';

class StoreDetailWidget extends StatelessWidget {
  const StoreDetailWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 174,
      decoration: BoxDecoration(
        color: Color(0xFF1D1D1D),
        border: Border.all(color: Color(0xFF333333), width: 1),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'Store Details',
              style: TextStyle(fontSize: 15, color: Color(0xFF787878)),
            ),
            SizedBox(height: 4),
            Text(
              'Store Address',
              style: TextStyle(color: Color(0xFFCBA54B), fontSize: 18),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Main Godown',
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
                Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 16,
                  color: Color(0xFF787878),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
