import 'package:flutter/material.dart';

class DateTimeWidget extends StatelessWidget {
  const DateTimeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      width: 174,
      decoration: BoxDecoration(
        color: Color(0xFF1D1D1D),
        border: Border.all(color: Color(0xFF333333), width: 1),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextWithIconRow('Date: 04 Jun 2025', Icons.date_range_outlined),
            SizedBox(height: 8),
            TextWithIconRow('Time: 05:50', Icons.access_time_outlined),
          ],
        ),
      ),
    );
  }

  Widget TextWithIconRow(String text, IconData icon) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text, style: TextStyle(fontSize: 16, color: Colors.white)),
        Icon(icon, size: 18, color: Color(0xFF787878)),
      ],
    );
  }
}
