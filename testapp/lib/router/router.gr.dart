// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;

import '../presentation/pages/main_pages/bottomnavigationpage.dart' as _i1;
import '../presentation/pages/main_pages/page_of_codes/codes_page.dart' as _i2;
import '../presentation/pages/other_pages/profile_page.dart' as _i4;
import '../presentation/pages/other_pages/settings_page.dart' as _i3;

class AppRouter extends _i5.RootStackRouter {
  AppRouter([_i6.GlobalKey<_i6.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    BottomNavPageRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.BottomNavPage(),
      );
    },
    CodesPageRouter.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.CodesPage(),
      );
    },
    SettingsPageRouter.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.SettingsPage(),
      );
    },
    ProfilePageRouter.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.ProfilePage(),
      );
    },
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig(
          BottomNavPageRoute.name,
          path: '/',
          children: [
            _i5.RouteConfig(
              CodesPageRouter.name,
              path: 'codespage',
              parent: BottomNavPageRoute.name,
            ),
            _i5.RouteConfig(
              SettingsPageRouter.name,
              path: 'settingspage',
              parent: BottomNavPageRoute.name,
            ),
            _i5.RouteConfig(
              ProfilePageRouter.name,
              path: 'profilepage',
              parent: BottomNavPageRoute.name,
            ),
          ],
        )
      ];
}

/// generated route for
/// [_i1.BottomNavPage]
class BottomNavPageRoute extends _i5.PageRouteInfo<void> {
  const BottomNavPageRoute({List<_i5.PageRouteInfo>? children})
      : super(
          BottomNavPageRoute.name,
          path: '/',
          initialChildren: children,
        );

  static const String name = 'BottomNavPageRoute';
}

/// generated route for
/// [_i2.CodesPage]
class CodesPageRouter extends _i5.PageRouteInfo<void> {
  const CodesPageRouter()
      : super(
          CodesPageRouter.name,
          path: 'codespage',
        );

  static const String name = 'CodesPageRouter';
}

/// generated route for
/// [_i3.SettingsPage]
class SettingsPageRouter extends _i5.PageRouteInfo<void> {
  const SettingsPageRouter()
      : super(
          SettingsPageRouter.name,
          path: 'settingspage',
        );

  static const String name = 'SettingsPageRouter';
}

/// generated route for
/// [_i4.ProfilePage]
class ProfilePageRouter extends _i5.PageRouteInfo<void> {
  const ProfilePageRouter()
      : super(
          ProfilePageRouter.name,
          path: 'profilepage',
        );

  static const String name = 'ProfilePageRouter';
}
