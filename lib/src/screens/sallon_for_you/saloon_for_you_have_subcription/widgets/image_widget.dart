import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class ImageWidget extends StatefulWidget {
  const ImageWidget({
    required this.onClose,
    required this.images,
    super.key,
  });
  final List<dynamic> images;

  final Function() onClose;

  @override
  State<ImageWidget> createState() => _ImageWidgetState();
}

class _ImageWidgetState extends State<ImageWidget> {
  int _currentIndex = 0;

  void _nextImage() {
    setState(() {
      _currentIndex = (_currentIndex + 1) % widget.images.length;
    });
  }

  void _previousImage() {
    setState(() {
      _currentIndex =
          (_currentIndex - 1 + widget.images.length) % widget.images.length;
    });
  }

  void _onHorizontalDrag(DragUpdateDetails details) {
    if (details.delta.dx > 0) {
      _previousImage(); // Swipe à droite
    } else if (details.delta.dx < 0) {
      _nextImage(); // Swipe à gauche
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onHorizontalDragUpdate: _onHorizontalDrag,
      child: Stack(
        children: [
          Center(
            child: AnimatedSwitcher(
              duration: const Duration(milliseconds: 800),
              child: Image.asset(
                width: MediaQuery.of(context).size.width,
                widget.images[_currentIndex],
                key: ValueKey<int>(_currentIndex + DateTime.now().second),
                fit: BoxFit.contain,
              ),
            ),
          ),
          if (widget.images.length > 1)
            Positioned(
              top: 0,
              right: 0,
              child: Container(
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 1,
                ),
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(0, 0, 0, 0.65),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  '${_currentIndex + 1}/${widget.images.length}',
                  style: GoogleFonts.inter(
                    color: Colors.white,
                    fontSize: 6,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
            ),
          Positioned(
            right: 10,
            bottom: 0,
            child: Align(
              alignment: Alignment.centerRight,
              child: Text(
                'thinking about so raining',
                style: GoogleFonts.inter(
                  color: const Color.fromRGBO(249, 191, 13, 1),
                  fontSize: 6,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
