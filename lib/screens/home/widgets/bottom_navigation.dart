import 'package:flutter/material.dart';
import 'package:mony_manager_flutter/screens/home/screen_home.dart';

class MonyManagerBottomNavigation extends StatelessWidget {
  const MonyManagerBottomNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: ScreenHome.selectedIndexNotifier,
      builder: (BuildContext ctx, int updatedIndex, Widget? _) {
        return BottomNavigationBar(
            currentIndex: updatedIndex,
            selectedItemColor: Colors.purple,
            unselectedItemColor: Colors.grey,
            onTap: (newIndex) {
              ScreenHome.selectedIndexNotifier.value = newIndex;
            },
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home), label: 'Transaction'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.category), label: 'Catogory')
            ]);
      },
    );
  }
}
