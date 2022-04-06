import 'package:flutter/material.dart';
import 'package:mony_manager_flutter/screens/catogory/expense_catogory_list.dart';
import 'package:mony_manager_flutter/screens/catogory/income_catogory_list.dart';

class ScreenCatogory extends StatefulWidget {
  const ScreenCatogory({Key? key}) : super(key: key);

  @override
  State<ScreenCatogory> createState() => _ScreenCatogoryState();
}

class _ScreenCatogoryState extends State<ScreenCatogory>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    // TODO: implement initState
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
            labelColor: Colors.black,
            unselectedLabelColor: Colors.grey,
            controller: _tabController,
            tabs: const [
              Tab(
                text: 'Income',
              ),
              Tab(
                text: 'Expense',
              ),
            ]),
        Expanded(
          child: TabBarView(controller: _tabController, children: const [
            IncomeCatogoryList(),
            ExpenseCatogoryList(),
          ]),
        )
      ],
    );
  }
}
