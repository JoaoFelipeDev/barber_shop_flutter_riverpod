import 'package:asyncstate/widget/async_state_builder.dart';
import 'package:dw_barbershop/src/core/ui/widgets/barbershop_loader.dart';
import 'package:dw_barbershop/src/features/splash/splash.dart';
import 'package:flutter/material.dart';

class BarberShopApp extends StatefulWidget {
  const BarberShopApp({super.key});

  @override
  State<BarberShopApp> createState() => _BarberShopAppState();
}

class _BarberShopAppState extends State<BarberShopApp> {
  @override
  Widget build(BuildContext context) {
    return AsyncStateBuilder(
      customLoader: const BarberShopLoader(),
      builder: (asyncNavigatorObserver) {
        return MaterialApp(
          title: 'DW Barbershop',
          navigatorObservers: [asyncNavigatorObserver],
          routes: {'/': (_) => const SplashPage()},
        );
      },
    );
  }
}
