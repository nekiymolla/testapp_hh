import 'package:flutter/material.dart';

import '../../widgets/sorting_list_view_containers.dart';
import '../../widgets/texts.dart';
import '../main_pages/page_of_codes/list_activities.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 80,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 13),
                child: mainText('Мои коды'),
              ),
              const Spacer(
                flex: 1,
              ),
              const Padding(
                padding: EdgeInsets.only(top: 15, right: 25),
                child: Icon(
                  Icons.notifications_rounded,
                  size: 35,
                ),
              )
            ],
          ),
        ),
        const SortingListView(),
        const SizedBox(
          height: 25,
        ),
        const Expanded(child: ListActivities()),
      ],
    );
  }
}
