import 'package:flutter/material.dart';
import 'package:greenbarnsolutions/theme.dart';
import 'package:greenbarnsolutions/utils/utils.dart';
import 'package:greenbarnsolutions/main.dart';

class HomeSlide extends StatefulWidget {
  const HomeSlide({super.key});

  @override
  State<HomeSlide> createState() => _HomeSlideState();
}

class _HomeSlideState extends State<HomeSlide> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Image.asset(
            'assets/electrictiller.jpg',
            fit: BoxFit.cover,
          ),
        ),
        const TextWidget(),
        const Column(
          children: [
            SizedBox(
              height: 12,
            ),
            PageWidget(),
          ],
        )
      ],
    );
  }
}
