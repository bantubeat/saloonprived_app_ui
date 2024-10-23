import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  final int count;
  final IconData icon;
  final bool isTransform;
  final void Function(BuildContext) onPressed;

  const ActionButton({
    required this.count,
    required this.icon,
    required this.onPressed,
    this.isTransform = false,
  });

  void _onPressed(BuildContext context) {
    onPressed(context);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(),
          child: ClipOval(
            child: Container(
              width: 40,
              height: 40,
              decoration: const BoxDecoration(
                color: Colors.transparent,
              ),
              child: Center(
                child: isTransform
                    ? IconButton(
                        onPressed: () => _onPressed(context),
                        icon: Transform(
                          alignment: Alignment.center,
                          transform: Matrix4.rotationY(3.14159),
                          child: Icon(
                            icon,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                      )
                    : IconButton(
                        onPressed: () => _onPressed(context),
                        icon: Icon(
                          icon,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
              ),
            ),
          ),
        ),
        Text(
          NumberFormat.compact().format(count),
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
            letterSpacing: .7,
          ),
        ),
      ],
    );
  }
}
