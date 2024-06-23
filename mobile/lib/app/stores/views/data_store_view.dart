import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mi_mercadito_app/app/stores/bloc/store_detail_bloc.dart';
import 'package:mi_mercadito_app/app/stores/store_presentation_model.dart';
import 'package:mi_mercadito_app/app/stores/widget/store_card.dart';
import 'package:mi_mercadito_app/app/stores/store_detail_page.dart';

class DataStoreView extends StatelessWidget {
  const DataStoreView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        for (final store in stores)
          GestureDetector(
            child: StoreCard(model: store),
            onTap: () {
              context
                  .read<StoreDetailBloc>()
                  .add(StoreDetailEvent.started(store.id));
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => StoreDetailView(model: store),
                ),
              );
            },
          ),
      ],
    );
  }
}

final stores = [
  StoreViewModel(
    name: 'Puesto Don Tito',
    distanceText: '1.2 km',
    id: '1',
    imageUrl:
        'https://cdn.pixabay.com/photo/2017/10/22/21/13/old-man-2879303_960_720.jpg',
    numberOfStallsText: '20 puestos',
    openingHours: '8:00 AM - 20:00 PM',
  ),
  StoreViewModel(
    name: 'Puesto Anita',
    distanceText: '1.2 km',
    id: '2',
    imageUrl:
        'https://cdn.pixabay.com/photo/2014/08/06/22/00/elderly-woman-412043_960_720.jpg',
    numberOfStallsText: '20 puestos',
    openingHours: '8:00 AM - 20:00 PM',
  ),
  StoreViewModel(
    name: 'La Bodega',
    distanceText: '1.2 km',
    id: '3',
    imageUrl:
        'https://cdn.pixabay.com/photo/2014/03/18/10/13/shopkeeper-289772_960_720.jpg',
    numberOfStallsText: '20 puestos',
    openingHours: '8:00 AM - 20:00 PM',
  ),
];
