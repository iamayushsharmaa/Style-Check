import 'package:flutter/material.dart';

class CustomerInfo extends StatefulWidget {
  const CustomerInfo({super.key});

  @override
  State<CustomerInfo> createState() => _CustomerInfoState();
}

class _CustomerInfoState extends State<CustomerInfo> {
  final TextEditingController pmtTerms = TextEditingController();

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
              TextWithInput(47.5, 160, 'Pmt Terms', true, pmtTerms, 'Net 15'),
              TextWithInput(
                47.5,
                160,
                'Due Date',
                false,
                pmtTerms,
                '20/06/2025',
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget TextWithInput(
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
}
