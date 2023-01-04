import 'dart:math';

import 'package:flutter/material.dart';
import 'package:testapp/l10n/l10n.dart';
import 'package:testapp/router/router.gr.dart';

void main() {
  final _appRouter = AppRouter();

  runApp(MaterialApp.router(
    supportedLocales: L10n.all,
    debugShowCheckedModeBanner: false,
    routerDelegate: _appRouter.delegate(),
    routeInformationParser: _appRouter.defaultRouteParser(),
  ));
}
