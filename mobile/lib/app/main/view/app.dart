import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mi_mercadito_app/app/coupons/coupons_list/bloc/coupons_list_bloc.dart';
import 'package:mi_mercadito_app/app/home/home_page.dart';
import 'package:mi_mercadito_app/app/stores/bloc/store_detail_bloc.dart';
import 'package:mi_mercadito_app/core/theme/app_theme.dart';
import 'package:mi_mercadito_app/core/theme/extensions/theme_of.dart';
import 'package:mi_mercadito_app/l10n/l10n.dart';
import 'package:themexpert/themexpert.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return ThemeXConfiguration(
        darkMode: false,
        builder: (context) {
          return MultiBlocProvider(
            providers: [
              BlocProvider<StoreDetailBloc>(
                  create: (context) => StoreDetailBloc()),
              BlocProvider<CouponsListBloc>(
                  create: (context) =>
                      CouponsListBloc()..add(const CouponsListEvent.started())),
            ],
            child: ThemeXWrapper(
                theme: AppTheme(context),
                builder: (context) {
                  return MaterialApp(
                    theme: themeOf(context).themeData,
                    localizationsDelegates:
                        AppLocalizations.localizationsDelegates,
                    supportedLocales: AppLocalizations.supportedLocales,
                    home: const HomePage(),
                  );
                }),
          );
        });
  }
}
