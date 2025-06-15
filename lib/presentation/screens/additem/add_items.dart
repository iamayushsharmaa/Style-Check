import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:stylecheck/presentation/screens/additem/widgets/add_new_item_widget.dart';
import 'package:stylecheck/presentation/screens/additem/widgets/total_item_widget.dart';

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
            AddNewItemWidget(),
            SizedBox(height: 16),
            TotalItemWidget(),
            SizedBox(height: 20),
            ActionButtons(),
            SizedBox(height: 20),
          ],
        ),
      ),
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
      ],
    );
  }
}
