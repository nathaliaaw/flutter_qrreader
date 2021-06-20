import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr_reader/provider/ui_provider.dart';

class CustomNavigationBar extends StatelessWidget {
  // const CustomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
        final iuProvider=Provider.of<UiProvider>(context);

    final currentIndex = iuProvider.selectedMenuOpt;
    return BottomNavigationBar(
      onTap: (int i)=> iuProvider.selectedMenuOpt=i,
        currentIndex: currentIndex,
        elevation: 0,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.map), label: 'Mapa'),
          BottomNavigationBarItem(
              icon: Icon(Icons.compass_calibration), label: 'Direcciones'),
        ]);
  }
}
