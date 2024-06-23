import 'package:flutter/material.dart';
import 'package:mi_mercadito_app/app/coupons/coupons_list/views/data_coupons_view.dart';
import 'package:mi_mercadito_app/app/home/widget/botton_navigation.dart';
import 'package:mi_mercadito_app/app/stores/views/data_store_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool firstTabSelect = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mi Mercadito'),
      ),
      backgroundColor: Colors.white,
      body: firstTabSelect ? const DataStoreView() : const DataCouponsView(),
      bottomNavigationBar: BottomNavitagionCustom(
        firstTabSelect: firstTabSelect,
        onChange: () {
          setState(() {
            firstTabSelect = !firstTabSelect;
          });
        },
      ),
    );
  }
}
