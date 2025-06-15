import 'package:flutter/material.dart';

import 'item_amount_calculate.dart';

class CustomerInfo extends StatefulWidget {
  const CustomerInfo({super.key});

  @override
  State<CustomerInfo> createState() => _CustomerInfoState();
}

class _CustomerInfoState extends State<CustomerInfo> {
  final TextEditingController pmtTerms = TextEditingController();
  final TextEditingController name = TextEditingController();
  final TextEditingController phoneNumber = TextEditingController();
  final TextEditingController eWayBill = TextEditingController();

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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextWithInputWithSuffix(
                47.5,
                160,
                'Pmt Terms',
                true,
                pmtTerms,
                'Net 15',
              ),
              TextWithInputWithSuffix(
                47.5,
                160,
                'Due Date',
                false,
                pmtTerms,
                '20/06/2025',
              ),
            ],
          ),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Customer Name',
                style: TextStyle(fontSize: 16, color: Color(0xFF787878)),
              ),
              SizedBox(
                width: 150,
                height: 28,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    elevation: 2,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.add, size: 13, color: Colors.black),
                      const SizedBox(width: 2),
                      Text(
                        'Add New Customer',
                        style: TextStyle(
                          color: Colors.black, // Text color
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 8),
          SizedBox(
            height: 50,
            child: TextField(
              controller: name,
              decoration: InputDecoration(
                hintText: 'Name',
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

          SizedBox(height: 12.39),
          TextWithInput(
            50,
            double.infinity,
            'Phone Number',
            phoneNumber,
            'Phone Number',
          ),
          SizedBox(height: 12.39),
          TextWithInputWithSuffix(
            50,
            double.infinity,
            'E-Way Bill No',
            true,
            eWayBill,
            'E-Way Bill No',
          ),
          SizedBox(height: 16),
          ItemAmountCalculate(),
          SizedBox(height: 16),

          TextNumberRow(
            'Total Disc: 0.0',
            'Total Tax Amt: 0.0',
            Color(0xFF787878),
            16,
          ),
          SizedBox(height: 16),
          TextNumberRow(
            'Total Quantity: 1',
            'Subtotal: ₹1000.00',
            Color(0xFF787878),
            16,
          ),
          SizedBox(height: 16),
          ActionButtons(),
          SizedBox(height: 10),

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

  Widget TextWithInputWithSuffix(
    double height,
    double width,
    String label,
    bool hasOptions,
    TextEditingController controller,
    String hint,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: TextStyle(fontSize: 18, color: Color(0xFF787878))),
        SizedBox(height: 8),
        SizedBox(
          height: height,
          width: width,
          child: TextField(
            controller: controller,
            maxLines: 1,
            decoration: InputDecoration(
              hintText: hint,
              filled: true,
              fillColor: Color(0xFF222222),
              suffixIcon: Icon(
                hasOptions
                    ? Icons.arrow_forward_ios_rounded
                    : Icons.date_range_outlined,
                size: 18,
                color: Colors.white,
              ),
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
        SizedBox(height: 12.39),
      ],
    );
  }

  Widget TextWithInput(
    double height,
    double width,
    String label,
    TextEditingController controller,
    String hint,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: TextStyle(fontSize: 18, color: Color(0xFF787878))),
        SizedBox(height: 8),
        SizedBox(
          height: height,
          width: width,
          child: TextField(
            controller: controller,
            maxLines: 1,
            decoration: InputDecoration(
              hintText: hint,
              filled: true,
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
        SizedBox(height: 12.39),
      ],
    );
  }

  Widget ActionButtons() {
    return Row(
      children: [
        Expanded(
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.black,
              backgroundColor: Colors.white,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(6),
                ), // 12px corner radius
              ),
              padding: const EdgeInsets.symmetric(vertical: 14),
              // Height adjustment
              textStyle: const TextStyle(fontSize: 16),
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.add, size: 18), // Add icon
                SizedBox(width: 8),
                Text(
                  'Add Product',
                  style: TextStyle(fontSize: 16, color: Colors.black),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(width: 8), // Space between buttons
        ElevatedButton(
          onPressed: () {}, // Add your logic here
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.black,
            backgroundColor: Colors.white,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(6)),
            ),
            padding: const EdgeInsets.all(12),
            // Compact padding for small button
            minimumSize: Size(45, 45),
          ),
          child: const Icon(
            Icons.qr_code_scanner,
            size: 20, // Small scanner icon
          ),
        ),
      ],
    );
  }
}
