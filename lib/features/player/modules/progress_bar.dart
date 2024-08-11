import 'package:abs_flutter/models/chapter.dart';
import 'package:abs_flutter/provider/player_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

class ProgressBar extends StatelessWidget {
  final Stream<Duration> positionStream;
  final Stream<Duration?> durationStream;
  final Stream<Duration?> bufferStream;
  final PlayerProvider player;
  final bool showPerChapter;
  final Chapter? currentChapter;
  final double size;

  const ProgressBar(
      {super.key,
      required this.positionStream,
      required this.durationStream,
      required this.player,
      required this.showPerChapter,
      required this.currentChapter,
      required this.bufferStream,
      this.size = 32});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        StreamBuilder(
            stream: positionStream,
            builder: (BuildContext context, AsyncSnapshot<Duration?> position) {
              if (position.hasData) {
                return SizedBox(
                    height: size / 1.5,
                    child: FittedBox(
                        fit: BoxFit.fitWidth,
                        alignment: Alignment.center,
                        child: PlatformText(_formattedTime(position.data!))));
              } else {
                return const SizedBox.shrink();
              }
            }),
        Expanded(
          child: StreamBuilder(
              stream: durationStream,
              builder:
                  (BuildContext context, AsyncSnapshot<Duration?> duration) {
                return StreamBuilder(
                    stream: positionStream,
                    builder: (BuildContext context,
                        AsyncSnapshot<Duration?> position) {
                      if (duration.hasData && position.hasData) {
                        double min = _getMinValue(currentChapter);
                        double max =
                            _getMaxValue(currentChapter, duration.data!);
                        double currentValue = _maxBoundaries(
                            position.data!.inMilliseconds.toDouble(),
                            min,
                            max);
                        return SliderTheme(
                          data: SliderTheme.of(context).copyWith(
                            thumbShape: RoundSliderThumbShape(
                                enabledThumbRadius: (size / 5)),
                            overlayShape: RoundSliderOverlayShape(
                                overlayRadius: (size / 2)),
                            trackHeight: size /
                                6, // Ensure track height matches the buffered indicator
                          ),
                          child: Slider(
                            value: currentValue,
                            min: min,
                            max: max,
                            onChanged: (double value) {
                              player.audioService.seek(
                                  Duration(milliseconds: value.toInt()));
                            },
                          ),
                        );
                      } else {
                        return const SizedBox.shrink();
                      }
                    });
              }),
        ),
        StreamBuilder(
            stream: durationStream,
            builder: (BuildContext context, AsyncSnapshot<Duration?> duration) {
              if (duration.hasData) {
                return (showPerChapter && currentChapter != null)
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
                            child:
                                PlatformText(_formattedTime(duration.data!))));
              } else {
                return const SizedBox.shrink();
              }
            }),
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
