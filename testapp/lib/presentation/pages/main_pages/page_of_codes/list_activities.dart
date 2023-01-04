import 'package:flutter/material.dart';

import '../../../widgets/buttons.dart';

class ListActivities extends StatefulWidget {
  const ListActivities({super.key});

  @override
  State<ListActivities> createState() => _ListActivitiesState();
}

class _ListActivitiesState extends State<ListActivities> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20, right: 20),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          ButtonCodes(
              color: const Color(0xFF4D8EFF).withOpacity(0.20),
              iconConColor: const Color(0xFF4D8EFF),
              text: 'Моя машина'),
          const SizedBox(
            height: 15,
          ),
          ButtonCodes(
            color: const Color(0xFFCDC1FF).withOpacity(0.20),
            text: 'Мой ребёнок',
            iconConColor: const Color(0xFFCDC1FF),
          ),
          const SizedBox(
            height: 15,
          ),
          ButtonCodes(
            color: const Color(0xFF7AE582).withOpacity(0.20),
            text: 'Моя квартира',
            iconConColor: const Color(0xFF7AE582),
          ),
          const SizedBox(
            height: 15,
          ),
          ButtonCodes(
            color: const Color(0xFF81CCF2).withOpacity(0.20),
            text: 'Мой кошелек',
            iconConColor: const Color(0xFF81CCF2),
          ),
          const SizedBox(
            height: 15,
          ),
          ButtonCodes(
            color: const Color(0xFF77EDD9).withOpacity(0.20),
            text: 'Мой телефон',
            iconConColor: const Color(0xFF77EDD9),
          ),
        ],
      ),
    );
  }
}
