import 'package:flutter/material.dart';
import 'package:true_locals/util/tap_scale.dart';

class AddPlaceButton extends StatefulWidget {
  const AddPlaceButton({Key? key}) : super(key: key);

  @override
  State<AddPlaceButton> createState() => _AddPlaceButtonState();
}

class _AddPlaceButtonState extends State<AddPlaceButton> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Align(
        alignment: Alignment.bottomCenter,
        child: TapScale(
          child: Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.black26,
              boxShadow: const [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 30,
                )
              ],
              border: Border.all(
                color: Colors.white,
                width: 8,
              ),
            ),
            child: const Center(
              child: Icon(
                Icons.add_rounded,
                size: 64,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
