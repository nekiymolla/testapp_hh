import 'package:auto_route/auto_route.dart';
import 'package:testapp/presentation/pages/main_pages/bottomnavigationpage.dart';
import 'package:testapp/presentation/pages/main_pages/page_of_codes/codes_page.dart';
import 'package:testapp/presentation/pages/other_pages/profile_page.dart';
import 'package:testapp/presentation/pages/other_pages/settings_page.dart';

@MaterialAutoRouter(routes: [
  AutoRoute(page: BottomNavPage, initial: true, children: <AutoRoute>[
    AutoRoute(
      page: CodesPage,
      path: 'codespage',
      name: 'codesPageRouter',
    ),
    AutoRoute(
      page: SettingsPage,
      path: 'settingspage',
      name: 'settingsPageRouter',
    ),
    AutoRoute(
      page: ProfilePage,
      path: 'profilepage',
      name: 'profilePageRouter',
    ),
  ]),
])
class $AppRouter {}
