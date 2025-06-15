import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:stylecheck/presentation/screens/addinvoice/widgets/bill_description_media.dart';
import 'package:stylecheck/presentation/screens/addinvoice/widgets/customer_info.dart';
import 'package:stylecheck/presentation/screens/addinvoice/widgets/date_time.dart';
import 'package:stylecheck/presentation/screens/addinvoice/widgets/discount_charges.dart';
import 'package:stylecheck/presentation/screens/addinvoice/widgets/invoice_no.dart';
import 'package:stylecheck/presentation/screens/addinvoice/widgets/store_detail.dart';
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
          'Add Invoice',
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
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Container(
              height: 34,
              width: 34,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(10.69),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SvgPicture.asset(
                  'assets/icons/ring.svg',
                  color: Colors.black,
                  height: 17.96,
                  width: 16.16,
                ),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            InvoiceNo(),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [DateTimeWidget(), StoreDetailWidget()],
            ),
            SizedBox(height: 16),
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
