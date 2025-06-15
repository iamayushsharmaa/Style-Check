import 'package:flutter/material.dart';
import 'package:stylecheck/presentation/screens/addinvoice/widgets/total_amount.dart';
import 'package:stylecheck/presentation/screens/additem/widgets/dicount_row.dart';

class DiscountCharges extends StatefulWidget {
  const DiscountCharges({super.key});

  @override
  State<DiscountCharges> createState() => _DiscountChargesState();
}

class _DiscountChargesState extends State<DiscountCharges> {
  final TextEditingController discount = TextEditingController();
  final TextEditingController shipping = TextEditingController();
  final TextEditingController packaging = TextEditingController();
  final TextEditingController adjustment = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xFF0E0E0E),
        border: Border.all(color: Color(0xFF787878), width: 1),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            'Discount & Charges',
            style: TextStyle(fontSize: 18, color: Colors.white),
          ),
          SizedBox(height: 12.39),
          DiscountRow(controller: discount),
          SizedBox(height: 12.39),
          TextWithInput('Shipping', shipping),
          SizedBox(height: 12.39),
          TextWithInput('Packaging', packaging),
          SizedBox(height: 12.39),
          TextWithInput('Adjustment', adjustment),
          SizedBox(height: 12.39),
          CheckboxTextRow(
            isReceived: false,
            inputField: true,
            color: Colors.white,
            text: 'Round off',
            value: '',
          ),
        ],
      ),
    );
  }

  Widget TextWithInput(String title, TextEditingController controller) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: TextStyle(fontSize: 16, color: Color(0xFF787878))),
        SizedBox(height: 8),
        SizedBox(
          height: 50,
          child: TextField(
            controller: shipping,
            decoration: InputDecoration(
              hintText: '100',
              hintStyle: TextStyle(color: Color(0xFF787878)),
              filled: true,
              fillColor: Color(0xFF222222),
              contentPadding: EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 12,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(35),
                borderSide: BorderSide(color: Color(0xFF333333), width: 0.89),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(35),
                borderSide: BorderSide(color: Color(0xFF333333), width: 0.89),
              ),
            ),
            style: TextStyle(color: Colors.white),
            cursorColor: Colors.white,
          ),
        ),
      ],
    );
  }
}
