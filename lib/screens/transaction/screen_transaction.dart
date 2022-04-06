import 'package:flutter/material.dart';

class ScreenTransaction extends StatelessWidget {
  const ScreenTransaction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.all(10),
      itemBuilder: (ctx, index) {
        return Card(
          elevation: 0,
          child: ListTile(
            leading: CircleAvatar(
              radius: 30,
              child: Text(
                '12\nDec',
                textAlign: TextAlign.center,
              ),
            ),
            title: Row(
              children: [
                Icon(
                  Icons.price_change,
                  color: Colors.green,
                ),
                Text('10000')
              ],
            ),
            subtitle: Text('Travel'),
          ),
        );
      },
      separatorBuilder: (ctx, index) {
        return SizedBox(
          height: 10,
        );
      },
      itemCount: 10,
    );
  }
}
