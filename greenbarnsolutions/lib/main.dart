import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'screenStateProvider.dart';
import 'customAppBar.dart';
import 'theme.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
            create: (_) => ScreenStateProvider()) // Change this line
      ],
      child: MaterialApp(
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
  Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(alignment: Alignment.center, children: [
      Container(
        //color: Colors.grey,
        padding: const EdgeInsets.all(1),
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomAppBar(),
              Container(
                color: Colors.grey.withOpacity(0.5),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Image.asset(
                  'assets/electrictiller.jpg',
                  fit: BoxFit.fitWidth,
                ),
              ),
            ],
          ),
        ),
      ),
      Positioned(bottom: 0.01, child: PageWidget())
    ]);
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
              child = Container(); // Replace Container() with your Home widget
              break;
            case 'About':
              child = About(); // Replace About() with your About widget
              break;
            case 'Partner':
              child = Partner(); // Replace Partner() with your Partner widget
              break;
            default:
              child = Container();
              break;
          }
          return AnimatedSwitcher(
            duration: Duration(seconds: 1),
            child: child,
          );
        },
      ),
    );
  }
}

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black87,
      width: MediaQuery.of(context).size.width * 0.8,
      height: MediaQuery.of(context).size.height * 0.8,
      child: Text(
        'about',
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}

class Partner extends StatefulWidget {
  const Partner({super.key});

  @override
  State<Partner> createState() => _PartnerState();
}

class _PartnerState extends State<Partner> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black87,
      width: MediaQuery.of(context).size.width * 0.8,
      height: MediaQuery.of(context).size.height * 0.8,
      child: Text(
        'Partner',
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
