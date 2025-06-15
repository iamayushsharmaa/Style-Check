import 'package:flutter/material.dart';

class TotalAmount extends StatefulWidget {
  const TotalAmount({super.key});

  @override
  State<TotalAmount> createState() => _TotalAmountState();
}

class _TotalAmountState extends State<TotalAmount> {
  final TextEditingController amount = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Total Amount',
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
              SizedBox(
                width: 110,
                child: Row(
                  children: [
                    const Icon(
                      Icons.currency_rupee,
                      size: 16,
                      color: Colors.black,
                    ),
                    const SizedBox(width: 4),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 36,
                            child: TextField(
                              controller: amount,
                              decoration: const InputDecoration(
                                hintStyle: TextStyle(fontSize: 12),
                                border: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                contentPadding: EdgeInsets.symmetric(
                                  vertical: 8,
                                ),
                              ),
                              style: const TextStyle(fontSize: 12),
                              cursorHeight: 14,
                            ),
                          ),
                          Container(
                            height: 1,
                            width: double.infinity,
                            child: CustomPaint(
                              painter: DottedLinePainter(color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 5),
          Transform.translate(
            offset: const Offset(-16.0, 0.0),
            child: const CheckboxTextRow(
              isReceived: false,
              inputField: false,
              color: Color(0xFF000000),
              text: 'Loyalty Points',
              value: 'Redeemable: 700Pts',
            ),
          ),
          SizedBox(height: 4),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 180,
                height: 39,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.black, width: 1),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Row(
                    children: [
                      Text(
                        'Point to use',
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
              Text(
                'Value: ₹200',
                style: TextStyle(fontSize: 18, color: Color(0xFFE4782A)),
              ),
            ],
          ),
          SizedBox(height: 16),
          TextNumberRow('Remaining Amount', '₹200', Color(0xFF787878)),
          const SizedBox(height: 5),
          Transform.translate(
            offset: const Offset(-16.0, 0.0),
            child: const CheckboxTextRow(
              isReceived: true,
              inputField: true,
              color: Color(0xFF000000),
              text: 'Remaining',
              value: '',
            ),
          ),
          SizedBox(height: 4),
          TextNumberRow('Balance Due', '734.98', Color(0xFFE4782A)),
          SizedBox(height: 10),
          TextNumberRow('Point Rewarded', '0.00', Colors.black),
        ],
      ),
    );
  }

  Widget TextNumberRow(String title, String value, Color color) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: TextStyle(fontSize: 18, color: color)),
        Text(value, style: TextStyle(fontSize: 18, color: color)),
      ],
    );
  }
}

class CheckboxTextRow extends StatefulWidget {
  final bool isReceived;
  final bool inputField;
  final Color color;
  final String text;
  final String value;

  const CheckboxTextRow({
    super.key,
    required this.isReceived,
    required this.inputField,
    required this.color,
    required this.text,
    required this.value,
  });

  @override
  CheckboxTextRowState createState() => CheckboxTextRowState();
}

class CheckboxTextRowState extends State<CheckboxTextRow> {
  bool _isChecked = false;
  final TextEditingController remainingAmount = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Checkbox(
              value: _isChecked,
              onChanged: (bool? value) {
                setState(() {
                  _isChecked = value ?? false;
                });
              },
              activeColor: Colors.blue,
              checkColor: Colors.white,
              side: const BorderSide(color: Colors.grey),
            ),
            Text(
              widget.text,
              style: TextStyle(fontSize: 16, color: widget.color),
            ),
            SizedBox(width: 8),
            widget.isReceived
                ? ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.black,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(18)),
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 0,
                      ),
                      minimumSize: const Size(0, 34),
                      textStyle: const TextStyle(fontSize: 15),
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.link, size: 18),
                        SizedBox(width: 5),
                        Text('Link'),
                      ],
                    ),
                  )
                : Container(),
          ],
        ),
        widget.inputField
            ? SizedBox(
                width: 110,
                child: Row(
                  children: [
                    Icon(
                      Icons.currency_rupee,
                      size: 16,
                      color: widget.isReceived
                          ? Colors.black
                          : Color(0xFFFFDD55),
                    ),
                    const SizedBox(width: 4),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 36, // Small height for TextField
                            child: TextField(
                              controller: remainingAmount,
                              decoration: InputDecoration(
                                hintStyle: TextStyle(fontSize: 12),
                                border: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                contentPadding: EdgeInsets.symmetric(
                                  vertical: 8,
                                ),
                              ),
                              style: const TextStyle(fontSize: 12),
                              cursorHeight: 14,
                              cursorColor: Colors.white,
                            ),
                          ),
                          Container(
                            height: 1,
                            width: double.infinity,
                            child: CustomPaint(
                              painter: DottedLinePainter(
                                color: widget.isReceived
                                    ? Colors.black
                                    : Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            : Text(
                'Redeemable: 700Pts',
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
      ],
    );
  }
}

class DottedLinePainter extends CustomPainter {
  final Color color;

  DottedLinePainter({super.repaint, required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..strokeWidth = 1
      ..style = PaintingStyle.stroke;

    const dashWidth = 5;
    const dashSpace = 3;
    double startX = 0;

    while (startX < size.width) {
      canvas.drawLine(Offset(startX, 0), Offset(startX + dashWidth, 0), paint);
      startX += dashWidth + dashSpace;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
