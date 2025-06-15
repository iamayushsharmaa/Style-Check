import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:stylecheck/presentation/screens/addinvoice/widgets/bill_description_media.dart';
import 'package:stylecheck/presentation/screens/addinvoice/widgets/customer_info.dart';
import 'package:stylecheck/presentation/screens/addinvoice/widgets/discount_charges.dart';
import 'package:stylecheck/presentation/screens/addinvoice/widgets/total_amount.dart';

class AddInvoice extends StatefulWidget {
  const AddInvoice({super.key});

  @override
  State<AddInvoice> createState() => _AddInvoiceState();
}

class _AddInvoiceState extends State<AddInvoice> {
  final TextEditingController description = TextEditingController();
  final TextEditingController billingAddress = TextEditingController();
  final TextEditingController shippingAddress = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF000000),
      appBar: AppBar(
        backgroundColor: Color(0xFF090909),
        title: Text(
          'Add Items',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
        leading: IconButton(
          onPressed: () => context.pop(),
          icon: Icon(
            Icons.keyboard_arrow_left_outlined,
            size: 32,
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            CustomerInfo(),
            SizedBox(height: 16),
            DiscountCharges(),
            SizedBox(height: 16),
            TotalAmount(),
            SizedBox(height: 16),
            BillDescriptionMedia(
              controller: description,
              billingAddress: billingAddress,
              shippingAddress: shippingAddress,
            ),
            SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
