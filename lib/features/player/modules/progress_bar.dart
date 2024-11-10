import 'package:abs_flutter/models/chapter.dart';
import 'package:abs_flutter/provider/player_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

class ProgressBar extends StatelessWidget {
  final Stream<Duration> positionStream;
  final Stream<Duration?> bufferStream;
  final PlayerProvider player;
  final bool showPerChapter;
  final Chapter? currentChapter;
  final double size;
  final bool disabled;
  final bool hideChapter;

  const ProgressBar(
      {super.key,
      required this.positionStream,
      required this.player,
      required this.showPerChapter,
      required this.currentChapter,
      required this.bufferStream,
      this.size = 32,
      this.disabled = false,
      this.hideChapter = false});

  @override
  Widget build(BuildContext context) {
    double? durationTime = player
        .audioService.mediaItem.value?.duration?.inMilliseconds
        .toDouble();
    if (durationTime == null) {
      return const SizedBox.shrink();
    }
    Duration duration = Duration(milliseconds: durationTime.toInt());
    return Column(
      children: [
        StreamBuilder(
            stream: positionStream,
            builder: (BuildContext context, AsyncSnapshot<Duration?> position) {
              if (position.hasData) {
                double min = _getMinValue(currentChapter);
                double max = _getMaxValue(currentChapter, duration);
                double currentValue = _maxBoundaries(
                    position.data!.inMilliseconds.toDouble(), min, max);
                return SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    thumbShape:
                        RoundSliderThumbShape(enabledThumbRadius: (size / 5)),
                    overlayShape:
                        RoundSliderOverlayShape(overlayRadius: (size / 2)),
                    trackHeight: size / 6,
                    trackShape: ProgressBarTrack(),
                  ),
                  child: Slider(
                    value: currentValue,
                    min: min,
                    max: max,
                    onChanged: disabled
                        ? null
                        : (double value) {
                            player.audioService
                                .seek(Duration(milliseconds: value.toInt()));
                          },
                  ),
                );
              } else {
                return const SizedBox.shrink();
              }
            }),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            StreamBuilder(
                stream: positionStream,
                builder:
                    (BuildContext context, AsyncSnapshot<Duration?> position) {
                  if (position.hasData) {
                    return SizedBox(
                        height: size / 1.5,
                        child: FittedBox(
                            fit: BoxFit.fitWidth,
                            alignment: Alignment.center,
                            child:
                                PlatformText(_formattedTime(position.data!))));
                  } else {
                    return const SizedBox.shrink();
                  }
                }),
            if (currentChapter != null && !hideChapter)
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: Center(
                  child: PlatformText(
                    currentChapter!.title,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              )),
            (showPerChapter && currentChapter != null)
                ? StreamBuilder<Duration>(
                    stream: positionStream,
                    builder: (BuildContext context,
                        AsyncSnapshot<Duration?> position) {
                      if (!position.hasData) {
                        return const SizedBox.shrink();
                      }
                      return SizedBox(
                        height: size / 1.5,
                        child: FittedBox(
                          fit: BoxFit.fitWidth,
                          alignment: Alignment.center,
                          child: PlatformText(_formattedTime(Duration(
                              seconds: (currentChapter!.end -
                                      position.data!.inSeconds)
                                  .toInt()))),
                        ),
                      );
                    })
                : SizedBox(
                    height: size / 1.5,
                    child: FittedBox(
                        fit: BoxFit.fitWidth,
                        alignment: Alignment.center,
                        child: PlatformText(_formattedTime(duration))))
          ],
        ),
      ],
    );
  }

  String _formattedTime(Duration position) {
    int totalMinutes = position.inMinutes;
    int hours = totalMinutes >= 60 ? totalMinutes ~/ 60 : 0;
    int minutes = totalMinutes % 60;
    int seconds = position.inSeconds % 60;

    String formattedTime = '';
    if (hours > 0) {
      formattedTime = '${hours.toString().padLeft(2, '0')}:';
    }
    formattedTime +=
        '${minutes.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')}';

    return formattedTime;
  }

  double _getMinValue(Chapter? chapter) {
    if (chapter == null || showPerChapter == false) {
      return 0;
    }
    return chapter.start.toDouble() * 1000;
  }

  double _getMaxValue(Chapter? chapter, Duration duration) {
    if (chapter == null || showPerChapter == false) {
      return duration.inMilliseconds.toDouble();
    }
    return chapter.end.toDouble() * 1000;
  }

  double _maxBoundaries(double current, double min, double max) {
    if (current < min) {
      return min;
    }
    if (current > max) {
      return max;
    }
    return current;
  }
}

class ProgressBarTrack extends RoundedRectSliderTrackShape {
  @override
  Rect getPreferredRect({
    required RenderBox parentBox,
    Offset offset = Offset.zero,
    required SliderThemeData sliderTheme,
    bool isEnabled = false,
    bool isDiscrete = false,
  }) {
    final trackHeight = sliderTheme.trackHeight;
    final trackLeft = offset.dx;
    final trackTop = offset.dy + (parentBox.size.height - trackHeight!) / 2;
    final trackWidth = parentBox.size.width;
    return Rect.fromLTWH(trackLeft, trackTop, trackWidth, trackHeight);
  }
}
