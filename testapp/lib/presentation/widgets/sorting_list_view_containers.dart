import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:testapp/presentation/widgets/texts.dart';

class SortingListView extends StatefulWidget {
  const SortingListView({super.key});

  @override
  State<SortingListView> createState() => _SortingListViewState();
}

class _SortingListViewState extends State<SortingListView> {
  List<String> items = [
    'Все коды',
    'Избранное',
    'Машина',
    'Добавить код',
  ];

  int current = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 45,
        width: double.infinity,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: items.length,
            itemBuilder: (ctx, index) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    current = index;
                  });
                },
                child: AnimatedContainer(
                  margin: const EdgeInsets.all(5),
                  height: 45,
                  decoration: BoxDecoration(
                      color: current == index ? Colors.black : Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      border: current == index
                          ? Border.all(
                              color: Colors.black,
                            )
                          : Border.all(color: const Color(0xFFEBEBEB))),
                  duration: const Duration(microseconds: 10),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15, right: 15),
                      child: Text(
                        items[index],
                        style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            color:
                                current == index ? Colors.white : Colors.black),
                      ),
                    ),
                  ),
                ),
              );
            }));
  }
}
