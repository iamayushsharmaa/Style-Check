import 'package:flutter/material.dart';

class DiscountRow extends StatefulWidget {
  final TextEditingController controller;

  const DiscountRow({super.key, required this.controller});

  @override
  State<DiscountRow> createState() => _DiscountRowState();
}

class _DiscountRowState extends State<DiscountRow> {
  bool isRupee = true;
  @override
  Widget build(BuildContext context) {
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
                  controller: widget.controller,
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
}
