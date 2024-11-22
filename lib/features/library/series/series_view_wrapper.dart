import 'package:abs_flutter/features/library/notch.dart';
import 'package:abs_flutter/features/library/series/series_view.dart';
import 'package:flutter/material.dart';

class SeriesViewWrapper extends StatelessWidget {
  const SeriesViewWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const SeriesView(),
        if (MediaQuery.of(context).size.width < 900) const LibraryNotch(),
      ],
    );
  }
}
