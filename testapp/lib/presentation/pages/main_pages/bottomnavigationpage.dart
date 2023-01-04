import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:testapp/presentation/widgets/texts.dart';
import 'package:testapp/router/router.gr.dart';

class BottomNavPage extends StatefulWidget {
  const BottomNavPage({super.key});

  @override
  State<BottomNavPage> createState() => _BottomNavPageState();
}

class _BottomNavPageState extends State<BottomNavPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        bottom: false,
        child: AutoTabsScaffold(
          extendBody: true,
          backgroundColor: Colors.white,
          routes: const [
            SettingsPageRouter(),
            CodesPageRouter(),
            ProfilePageRouter(),
          ],
          bottomNavigationBuilder: (_, tabsRouter) {
            return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Color(0xFF211F1F),
              ),
              child: SalomonBottomBar(
                selectedColorOpacity: 1,
                currentIndex: tabsRouter.activeIndex,
                onTap: tabsRouter.setActiveIndex,
                selectedItemColor: const Color(0xFFFCDC1FF),
                unselectedItemColor: Colors.white,
                items: [
                  SalomonBottomBarItem(
                    icon: const Icon(Icons.settings),
                    title: ownText('Параметры', Colors.black),
                    activeIcon: const Icon(
                      Icons.settings,
                      color: Colors.black,
                    ),
                  ),
                  SalomonBottomBarItem(
                    icon: const Icon(
                      Icons.qr_code,
                    ),
                    activeIcon: const Icon(
                      Icons.qr_code,
                      color: Colors.black,
                    ),
                    title: ownText(
                      'Мои коды',
                      Colors.black,
                    ),
                  ),
                  SalomonBottomBarItem(
                    icon: const Icon(Icons.person),
                    title: ownText('Профиль', Colors.black),
                    activeIcon: const Icon(
                      Icons.person,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
