import 'package:flutter/material.dart';
import 'package:greenbarnsolutions/Screens/stratergyslide.dart';
import 'package:greenbarnsolutions/firebase_options.dart';
import 'package:greenbarnsolutions/theme.dart';
import 'package:provider/provider.dart';
import 'screenStateProvider.dart';
import 'customAppBar.dart';
import 'Screens/about.dart';
import 'Screens/partner.dart';
import 'Screens/contact.dart';
import 'Screens/tractionslide.dart';
import 'Screens/stratergyslide.dart';
import 'utils/utils.dart';

import 'package:google_fonts/google_fonts.dart';
import 'Screens/homeslide.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
            create: (_) => ScreenStateProvider()) // Change this line
      ],
      child: const MaterialApp(
        title: 'Green Barn Solutions',
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Home(),
        ),
      ),
    ),
  );
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomAppBar(),
        Expanded(
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(1),
                child: SingleChildScrollView(
                  child: Column(
                    children: [HomeSlide(), TractionSlide(), StratergySlide()],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class PageWidget extends StatefulWidget {
  const PageWidget({Key? key}) : super(key: key);

  @override
  State<PageWidget> createState() => _PageWidgetState();
}

class _PageWidgetState extends State<PageWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Consumer<ScreenStateProvider>(
        builder: (context, provider, _) {
          Widget child;
          // Use provider.screenState to determine which widget to display
          switch (provider.screenState) {
            case 'Home':
              child = Container();
              break;
            case 'About':
              child = const About();
              break;
            case 'Contact':
              child = const Contact();
              break;
            case 'Partner':
              child = const Partner();
              break;
            default:
              child = Container();
              break;
          }
          return AnimatedSwitcher(
            duration: const Duration(seconds: 1),
            child: child,
          );
        },
      ),
    );
  }
}
