import 'package:flutter/material.dart';

class ItemAmountCalculate extends StatelessWidget {
  const ItemAmountCalculate({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.transparent,
        border: Border.all(color: Color(0xFF333333), width: 1),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          TextNumberRow('WOOLEN SWEATER - COKE', '₹200.00', Colors.white, 16),
          SizedBox(height: 8),
          TextNumberRow(
            'Items Subtotal',
            '1 x 200 = ₹200.00',
            Color(0xFF787878),
            16,
          ),
          SizedBox(height: 8),
          SizedBox(height: 8),
          TextNumberRow('Discount(%):0', '₹0.00', Color(0xFFFFDD55), 16),
          SizedBox(height: 8),
          TextNumberRow('Tax: 0%', '₹0.00', Color(0xFF787878), 16),
        ],
      ),
    );
  }

  Widget TextNumberRow(
    String title,
    String value,
    Color color,
    double? fontSize,
  ) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: fontSize, color: color),
        ),
        Text(
          value,
          style: TextStyle(fontSize: fontSize, color: color),
        ),
      ],
    );
  }
}
