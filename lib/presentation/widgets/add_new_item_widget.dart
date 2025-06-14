import 'package:flutter/material.dart';

class AddNewItemWidget extends StatefulWidget {
  const AddNewItemWidget({super.key});

  @override
  State<AddNewItemWidget> createState() => _AddNewItemWidgetState();
}

class _AddNewItemWidgetState extends State<AddNewItemWidget> {
  final TextEditingController itemName = TextEditingController();
  final TextEditingController quantity = TextEditingController();
  final TextEditingController freeQuantity = TextEditingController();
  final TextEditingController unit = TextEditingController();
  final TextEditingController rate = TextEditingController();
  final TextEditingController tax = TextEditingController();
  final TextEditingController count = TextEditingController();
  final TextEditingController mrp = TextEditingController();
  final TextEditingController description = TextEditingController();
  final TextEditingController color = TextEditingController();
  final TextEditingController size = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 800,
      decoration: BoxDecoration(
        color: Color(0xFF0E0E0E),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Color(0xFF787878), width: 1),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Item Name',
                  style: TextStyle(fontSize: 16, color: Color(0xFF787878)),
                ),
                SizedBox(
                  height: 26,
                  width: 150,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Row(
                      children: [
                        Icon(Icons.add, color: Colors.black),
                        Text(
                          'Add New Item',
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 6),
            SizedBox(
              height: 58,
              child: TextField(
                controller: itemName,
                maxLines: 1,
                decoration: InputDecoration(
                  hintText: 'Test 1',
                  filled: true,
                  fillColor: Color(0xFF222222),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(35.41),
                    borderSide: BorderSide(
                      color: Color(0xFF333333),
                      width: 0.89,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(35.41),
                    borderSide: BorderSide(
                      color: Color(0xFF333333),
                      width: 0.89,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 12.39),
            Row(
              spacing: 10,
              children: [
                TextWithInput(50, 100, 'Quantity', quantity, '15'),
                TextWithInput(50, 100, 'Free Quantity', freeQuantity, '1'),
                TextWithInput(50, 100, 'Unit', unit, 'gm'),
              ],
            ),
            SizedBox(height: 12.39),
            Row(
              spacing: 10,
              children: [
                TextWithInput(50, 155, 'Rate(Price/Unit)', rate, '100'),
                TextWithInput(50, 155, 'Tax', tax, 'With Tax'),
              ],
            ),
            SizedBox(height: 12.39),
            Row(
              spacing: 10,
              children: [
                TextWithInput(50, 155, 'Count', count, 'Count'),
                TextWithInput(50, 155, 'MRP', mrp, 'MRP'),
              ],
            ),
            SizedBox(height: 12.39),
            descriptionWidget(description),
          ],
        ),
      ),
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
        Text(label, style: TextStyle(fontSize: 16, color: Color(0xFF787878))),
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
          ),
        ),
      ],
    );
  }

  Widget descriptionWidget(TextEditingController controller) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Description',
          style: TextStyle(fontSize: 16, color: Color(0xFF787878)),
        ),
        SizedBox(height: 7),
        SizedBox(
          height: 101,
          child: TextField(
            controller: controller,
            maxLines: 5,
            decoration: InputDecoration(
              hintText: 'Description',
              filled: true,
              fillColor: Color(0xFF222222),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(11),
                borderSide: BorderSide(color: Color(0xFF333333), width: 0.89),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(11),
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
