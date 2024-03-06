import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final double titleSize = 20;

final Color firstColor = Color(0xFFD7BE96);
final Color secColor = Color(0xFFE5E7E);

class HoverContainer extends StatefulWidget {
  final String text;

  HoverContainer({required this.text});

  @override
  _HoverContainerState createState() => _HoverContainerState();
}

class _HoverContainerState extends State<HoverContainer> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          _isHovered = true;
        });
      },
      onExit: (_) {
        setState(() {
          _isHovered = false;
        });
      },
      child: Container(
        width: 200,
        height: 200,
        decoration: BoxDecoration(
          color: _isHovered ? firstColor.withOpacity(0.5) : Colors.black87,
          border: Border.all(color: _isHovered ? Colors.black87 : Colors.white),
        ),
        child: Center(
          child: Text(
            widget.text,
            style: GoogleFonts.play(
              color: _isHovered ? Colors.black87 : Colors.white,
              fontWeight: _isHovered ? FontWeight.bold : FontWeight.normal,
            ),
          ),
        ),
      ),
    );
  }
}
