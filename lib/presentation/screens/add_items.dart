import 'package:flutter/material.dart';
import 'package:stylecheck/presentation/widgets/add_new_item_widget.dart';
import 'package:stylecheck/presentation/widgets/total_item_widget.dart';

class AddItems extends StatelessWidget {
  const AddItems({super.key});

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
        leading: Icon(
          Icons.keyboard_arrow_left_outlined,
          size: 32,
          color: Colors.white,
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            AddNewItemWidget(),
            SizedBox(height: 16),
            TotalItemWidget(),
          ],
        ),
      ),
    );
  }
}
