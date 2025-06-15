import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class InvoiceNo extends StatelessWidget {
  const InvoiceNo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      width: double.infinity,
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Invoice No',
                  style: TextStyle(color: Color(0xFF787878), fontSize: 16),
                ),
                SvgPicture.asset(
                  'assets/icons/setting.svg',
                  height: 18,
                  width: 18,
                ),
              ],
            ),
            SizedBox(height: 6),
            Row(
              children: [
                SvgPicture.asset(
                  'assets/icons/invoice.svg',
                  height: 18,
                  width: 18,
                ),
                SizedBox(width: 8,),
                Text(
                  'INV-2025-001',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
