import 'package:carousel_slider/carousel_slider.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'custom_card.dart';

class SliderCards extends StatefulWidget {
  const SliderCards({super.key});

  @override
  State<SliderCards> createState() => _SliderCardsState();
}

class _SliderCardsState extends State<SliderCards> {
  final List<Widget> cards = [
    const CardUi(
      color: Color.fromARGB(255, 222, 253, 235),
    ),
    const CardUi(
      color: Colors.teal,
    ),
    const CardUi(
      color: Color(0xff4d5767),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Model(),
      child: Consumer<Model>(builder: (context, value, child) {
        return Column(
          children: [
            CarouselSlider(
              items: cards,
              options: CarouselOptions(
                autoPlay: true,
                aspectRatio: 2,
                enlargeCenterPage: true,
                onPageChanged: (index, reason) {
                  value.changeIndex(index);
                },
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center, // Center the dots
              children: cards.map((card) {
                int index = cards.indexOf(card);
                return Container(
                  width: 8,
                  height: 8,
                  margin: const EdgeInsets.symmetric(horizontal: 4.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: value._currentIndex == index
                        ? Colors.teal
                        : Colors.grey,
                  ),
                );
              }).toList(),
            )
          ],
        );
      }),
    );
  }
}

class Model extends ChangeNotifier {
  int _currentIndex = 0;
  changeIndex(index) {
    _currentIndex = index;
    notifyListeners();
  }
}
