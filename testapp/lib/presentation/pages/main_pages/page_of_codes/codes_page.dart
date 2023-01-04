import 'package:flutter/material.dart';
import 'package:testapp/main.dart';
import 'package:testapp/presentation/pages/main_pages/page_of_codes/list_activities.dart';
import 'package:testapp/presentation/widgets/buttons.dart';
import 'package:testapp/presentation/widgets/sorting_list_view_containers.dart';
import 'package:testapp/presentation/widgets/texts.dart';

class CodesPage extends StatefulWidget {
  const CodesPage({super.key});

  @override
  State<CodesPage> createState() => _CodesPageState();
}

class _CodesPageState extends State<CodesPage> {
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
        Expanded(child: const ListActivities()),
      ],
    );
  }
}
