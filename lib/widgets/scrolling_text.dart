import 'package:flutter/material.dart';

class ScrollingText extends StatefulWidget {
  final String text;
  final TextStyle style;
  final Duration scrollDuration;
  final double? width;
  final Duration pauseDuration;

  const ScrollingText({
    super.key,
    required this.text,
    required this.style,
    required this.scrollDuration,
    this.width,
    this.pauseDuration = const Duration(seconds: 5),
  });

  @override
  State<ScrollingText> createState() => _ScrollingTextState();
}

class _ScrollingTextState extends State<ScrollingText>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();

    _controller = AnimationController(
      vsync: this,
      duration: widget.scrollDuration,
    )..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          _pauseAndReverse();
        } else if (status == AnimationStatus.dismissed) {
          _pauseAndForward();
        }
      });

    _controller.addListener(() {
      if (_scrollController.hasClients) {
        final maxScrollExtent = _scrollController.position.maxScrollExtent;
        final offset = maxScrollExtent * _controller.value;
        _scrollController.jumpTo(offset);
      }
    });

    _controller.forward();
  }

  Future<void> _pauseAndReverse() async {
    await Future.delayed(widget.pauseDuration);
    _controller.reverse();
  }

  Future<void> _pauseAndForward() async {
    await Future.delayed(widget.pauseDuration);
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width ?? double.infinity,
      child: SingleChildScrollView(
        controller: _scrollController,
        scrollDirection: Axis.horizontal,
        child: Text(
          widget.text,
          style: widget.style,
        ),
      ),
    );
  }
}
