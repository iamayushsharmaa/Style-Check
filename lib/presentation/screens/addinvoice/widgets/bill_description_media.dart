import 'package:flutter/material.dart';

class BillDescriptionMedia extends StatefulWidget {
  final TextEditingController controller;
  final TextEditingController billingAddress;
  final TextEditingController shippingAddress;

  const BillDescriptionMedia({
    super.key,
    required this.controller,
    required this.billingAddress,
    required this.shippingAddress,
  });

  @override
  State<BillDescriptionMedia> createState() => _BillDescriptionMediaState();
}

class _BillDescriptionMediaState extends State<BillDescriptionMedia> {
  bool sameAsBilling = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Color(0xFF0E0E0E),
            border: Border.all(color: Color(0xFF787878), width: 1),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Bill Description',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Description',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                    SizedBox(height: 10),
                    SizedBox(
                      child: TextField(
                        controller: widget.controller,
                        maxLines: 2,
                        decoration: InputDecoration(
                          hintText: 'Description of bill',
                          hintStyle: TextStyle(color: Color(0xFF787878)),
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
                    SizedBox(height: 16),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 30,
                        vertical: 8,
                      ),
                      decoration: BoxDecoration(
                        color: Color(0xFF333333),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.attach_file,
                            color: Colors.white,
                            size: 16,
                          ),
                          SizedBox(width: 8),
                          Text(
                            'Add Media',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 16),
        Text(
          'Billing Address:',
          style: TextStyle(fontSize: 18, color: Colors.white),
        ),
        SizedBox(height: 10),
        SizedBox(
          height: 50,
          child: TextField(
            controller: widget.billingAddress,
            decoration: InputDecoration(
              hintText: 'Billing Address',
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
          ),
        ),
        SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Shipping Address:',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            Row(
              children: [
                Transform.scale(
                  scale: 0.8,
                  child: Checkbox(
                    value: sameAsBilling,
                    checkColor: Colors.black,
                    activeColor: Colors.white,
                    side: BorderSide(color: Colors.white),
                    onChanged: (bool? value) {
                      setState(() {
                        sameAsBilling = value ?? false;
                      });
                    },
                  ),
                ),
                Text(
                  'Same as Billing Address',
                  style: TextStyle(fontSize: 14, color: Colors.white),
                ),
              ],
            ),
          ],
        ),
        SizedBox(height: 10),
        SizedBox(
          height: 50,
          child: TextField(
            controller: widget.shippingAddress,
            decoration: InputDecoration(
              hintText: 'Shipping Address',
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
          ),
        ),
        SizedBox(height: 16),
        ActionButtons(),
      ],
    );
  }

  Widget ActionButtons() {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: Container(
            height: 50,
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(5),
              border: Border.all(color: Colors.grey, width: 1),
            ),
            child: Center(
              child: Text(
                'Save & New',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
          ),
        ),
        SizedBox(width: 10),
        Expanded(
          flex: 1,
          child: Container(
            height: 50,
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(5),
              border: Border.all(color: Colors.grey, width: 1),
            ),
            child: Center(
              child: Text(
                'Save',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
          ),
        ),
        SizedBox(width: 10),
        Container(
            height: 50,
            width: 60,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
              border: Border.all(color: Colors.grey, width: 1),
            ),
            child: Icon(Icons.share, color: Colors.black,),
          ),

      ],
    );
  }
}
