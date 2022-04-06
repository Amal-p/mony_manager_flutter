import 'package:flutter/material.dart';

class IncomeCatogoryList extends StatelessWidget {
  const IncomeCatogoryList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (ctx, index) {
        return Card(
          elevation: 0,
          child: ListTile(
            title: Text("Income Catogory list $index"),
            trailing: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.delete,
                  color: Colors.red,
                )),
          ),
        );
      },
      separatorBuilder: (ctx, index) {
        return SizedBox(
          height: 10,
        );
      },
      itemCount: 100,
    );
  }
}
