import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CenterMapButton extends StatelessWidget {
  final Function() action;
  const CenterMapButton(this.action, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16),
      child: SafeArea(
        child: Align(
          alignment: Alignment.bottomRight,
          child: Container(
            height: 55,
            width: 55,
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 16,
                )
              ],
            ),
            child: const Center(
              child: Icon(CupertinoIcons.location),
            ),
          ),
        ),
      ),
    );
  }
}
