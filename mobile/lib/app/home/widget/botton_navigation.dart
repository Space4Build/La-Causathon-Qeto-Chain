import 'package:flutter/material.dart';

class BottomNavitagionCustom extends StatelessWidget {
  const BottomNavitagionCustom({
    super.key,
    required this.firstTabSelect,
    required this.onChange,
  });
  final bool firstTabSelect;

  final VoidCallback onChange;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: (value) => onChange(),
      currentIndex: firstTabSelect ? 0 : 1,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.store),
          label: 'Puestos',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.card_giftcard),
          label: 'Cupones',
        ),
      ],
      //  selectedItemColor: const Color.fromARGB(255, 0, 0, 0),
    );
  }
}
