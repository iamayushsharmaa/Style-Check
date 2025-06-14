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

  bool toggleAdditionDetails = false;
  bool hasOptions = false;

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
                  'Item Name',
                  style: TextStyle(fontSize: 18, color: Color(0xFF787878)),
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
            SizedBox(height: 8),
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
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(height: 12.39),
            Row(
              spacing: 10,
              children: [
                TextWithInput(50, 100, 'Quantity', false, quantity, '15'),
                TextWithInput(
                  50,
                  100,
                  'Free Quantity',
                  false,
                  freeQuantity,
                  '1',
                ),
                TextWithInput(50, 100, 'Unit', true, unit, 'gm'),
              ],
            ),
            SizedBox(height: 12.39),
            Row(
              spacing: 10,
              children: [
                TextWithInput(50, 155, 'Rate(Price/Unit)', false, rate, '100'),
                TextWithInput(50, 155, 'Tax', true, tax, 'With Tax'),
              ],
            ),
            SizedBox(height: 12.39),
            Row(
              spacing: 10,
              children: [
                TextWithInput(50, 155, 'Count', false, count, 'Count'),
                TextWithInput(50, 155, 'MRP', false, mrp, 'MRP'),
              ],
            ),
            SizedBox(height: 12.39),
            descriptionWidget(description),
            SizedBox(height: 18),
            GestureDetector(
              onTap: () {
                setState(() {
                  toggleAdditionDetails = !toggleAdditionDetails;
                });
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Additional Details',
                    style: TextStyle(fontSize: 17, color: Colors.white),
                  ),
                  Icon(
                    toggleAdditionDetails
                        ? Icons.keyboard_arrow_up
                        : Icons.keyboard_arrow_down,
                    color: Colors.white,
                    size: 24,
                  ),
                ],
              ),
            ),
            SizedBox(height: 6),
            toggleAdditionDetails
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [colorSizePicker(true), colorSizePicker(false)],
                  )
                : Container(),
          ],
        ),
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
              suffixIcon: hasOptions
                  ? Icon(Icons.arrow_forward_ios_rounded, size: 18, color: Colors.white,)
                  : null,
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

  Widget descriptionWidget(TextEditingController controller) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Description',
          style: TextStyle(fontSize: 18, color: Color(0xFF787878)),
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

  Widget colorSizePicker(bool isColorPicker) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 6),
        Text(
          isColorPicker ? 'Color' : 'Size',
          style: TextStyle(fontSize: 18, color: Color(0xFF787878)),
        ),
        SizedBox(height: 6),
        Container(
          height: 58.92,
          width: 160,
          decoration: BoxDecoration(
            color: Color(0xFF222222),
            borderRadius: BorderRadius.circular(35.41),
            border: Border.all(width: 0.89, color: Color(0xFF333333)),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  isColorPicker ? 'Choose color' : 'Choose size',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
                isColorPicker
                    ? Icon(Icons.color_lens_outlined, color: Colors.red)
                    : Container(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
