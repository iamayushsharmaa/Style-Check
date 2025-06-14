import 'package:flutter/material.dart';

class TotalItemWidget extends StatefulWidget {
  const TotalItemWidget({super.key});

  @override
  State<TotalItemWidget> createState() => _TotalItemWidgetState();
}

class _TotalItemWidgetState extends State<TotalItemWidget> {
  final TextEditingController discount = TextEditingController();
  final TextEditingController tax = TextEditingController();
  bool isRupee = true;

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
                Text(
                  '₹200.00',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ],
            ),
            SizedBox(height: 12.39),
            Discount(discount),
            SizedBox(height: 12.39),
            Tax(tax),
            SizedBox(height: 12.39),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total Amount:',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
                Text(
                  '₹200.00',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget Discount(TextEditingController controller) {
    return Row(
      children: [
        Text('Discount', style: TextStyle(fontSize: 18, color: Colors.white)),
        SizedBox(width: 20),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 100,
                child: TextField(
                  controller: controller,
                  maxLines: 1,
                  decoration: InputDecoration(
                    hintText: '50',
                    filled: true,
                    fillColor: Color(0xFF222222),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                      borderSide: BorderSide(
                        color: Color(0xFF333333),
                        width: 0.89,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                      borderSide: BorderSide(
                        color: Color(0xFF333333),
                        width: 0.89,
                      ),
                    ),
                  ),
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(width: 6),
              Row(
                children: [
                  PercentageOrRuppe(false),
                  Transform.scale(
                    scale: 0.9,
                    child: Switch(
                      inactiveThumbColor: Colors.white,
                      inactiveTrackColor: Color(0xFF222222),
                      activeColor: Colors.white,
                      activeTrackColor: Color(0xFFE4782A),
                      value: isRupee,
                      onChanged: (val) {
                        setState(() {
                          isRupee = val;
                        });
                      },
                    ),
                  ),
                  PercentageOrRuppe(true),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget PercentageOrRuppe(bool isRupee) {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        color: Color(0xFF222222),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Icon(
        isRupee ? Icons.currency_rupee : Icons.percent,
        color: Colors.white,
        size: 20,
      ),
    );
  }

  Widget Tax(TextEditingController controller) {
    return Row(
      children: [
        Text('Tax \%', style: TextStyle(fontSize: 18, color: Colors.white)),
        SizedBox(width: 20),
        Expanded(
          child: TextField(
            controller: controller,
            maxLines: 1,
            decoration: InputDecoration(
              hintText: 'None',
              filled: true,
              suffixIcon: Icon(
                Icons.arrow_forward_ios_rounded,
                size: 18,
                color: Colors.white,
              ),
              fillColor: Color(0xFF222222),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(35.41),
                borderSide: BorderSide(color: Color(0xFF333333), width: 0.89),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(35.41),
                borderSide: BorderSide(color: Color(0xFF333333), width: 0.89),
              ),
            ),
            style: TextStyle(color: Colors.white),
          ),
        ),
      ],
    );
  }
}
