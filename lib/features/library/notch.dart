
import 'package:abs_flutter/features/library/notch/notch_content.dart';
import 'package:flutter/material.dart';



class LibraryNotch extends StatelessWidget {
  const LibraryNotch({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor,
        boxShadow: const [
          BoxShadow(
            spreadRadius: 1,
            blurRadius: 1,
            offset: Offset(0, 1),
          ),
        ],
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(32.0),
          bottomRight: Radius.circular(32.0),
        ),
      ),
      child: const Padding(
        padding: EdgeInsets.only(left: 8, right: 8, top: 8, bottom: 8),
        child: NotchContent()
      ),
    );
  }
}
