import 'package:flutter/material.dart';
import 'package:mony_manager_flutter/screens/catogory/category_popup.dart';
import 'package:mony_manager_flutter/screens/catogory/screen_catogory.dart';
import 'package:mony_manager_flutter/screens/home/widgets/bottom_navigation.dart';
import 'package:mony_manager_flutter/screens/transaction/screen_transaction.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({Key? key}) : super(key: key);
  static ValueNotifier<int> selectedIndexNotifier = ValueNotifier(0);
  final _pages = const [ScreenTransaction(), ScreenCatogory()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[350],
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'MONY MANAGER',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
      bottomNavigationBar: MonyManagerBottomNavigation(),
      body: SafeArea(
          child: ValueListenableBuilder(
        valueListenable: selectedIndexNotifier,
        builder: (BuildContext ctx, int updatedIndex, Widget? _) {
          return _pages[updatedIndex];
        },
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (selectedIndexNotifier.value == 0) {
            print("Button clicked from Transction page");
          } else if (selectedIndexNotifier.value == 1) {
            print("Button clicked from Catogory page");
            showCategoryAddPopup(context);
          }
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
