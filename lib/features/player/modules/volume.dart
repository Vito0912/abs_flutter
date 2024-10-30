import 'package:abs_flutter/provider/player_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

class Volume extends StatefulWidget {
  const Volume({
    super.key,
    required this.volumeStream,
    required this.player,
    required this.size,
  });

  final Stream<double> volumeStream;
  final PlayerProvider player;
  final double size;

  @override
  _VolumeState createState() => _VolumeState();
}

class _VolumeState extends State<Volume> {
  final GlobalKey _buttonKey = GlobalKey();
  OverlayEntry? _overlayEntry;

  @override
  void dispose() {
    _removeOverlay();
    super.dispose();
  }

  void _removeOverlay() {
    _overlayEntry?.remove();
    _overlayEntry = null;
  }

  void _toggleSlider() {
    if (_overlayEntry == null) {
      final RenderBox buttonBox =
          _buttonKey.currentContext?.findRenderObject() as RenderBox;
      final Offset buttonPosition = buttonBox.localToGlobal(Offset.zero);

      final screenSize = MediaQuery.of(context).size;
      final screenWidth = screenSize.width;
      final screenHeight = screenSize.height;

      final double topPosition =
          (buttonPosition.dy - 160).clamp(0.0, screenHeight - 160);
      final double leftPosition =
          (buttonPosition.dx).clamp(0.0, screenWidth - 150);

      _overlayEntry = OverlayEntry(
        builder: (context) {
          return Positioned(
            top: topPosition,
            left: leftPosition,
            child: Material(
              color: Colors.transparent,
              child: Container(
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.7),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: StreamBuilder<double>(
                  stream: widget.volumeStream,
                  builder:
                      (BuildContext context, AsyncSnapshot<double> snapshot) {
                    return RotatedBox(
                      quarterTurns: 3,
                      child: SizedBox(
                        height: 30,
                        width: 150,
                        child: PlatformSlider(
                          value: snapshot.data ?? 0.0,
                          onChanged: (double value) {
                            widget.player.audioService.setVolume(value);
                          },
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          );
        },
      );

      Overlay.of(context).insert(_overlayEntry!);
    } else {
      _removeOverlay();
    }
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _removeOverlay();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: PlatformIconButton(
        key: _buttonKey,
        icon: Icon(context.platformIcons.volumeUp, size: widget.size),
        onPressed: _toggleSlider,
      ),
    );
  }
}
