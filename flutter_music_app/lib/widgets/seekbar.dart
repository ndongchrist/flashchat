import 'dart:math';

import 'package:flutter/material.dart';

class SeekBarData {
  final Duration position;
  final Duration? duration;

  SeekBarData({required this.position, required this.duration});
}

class SeekBar extends StatefulWidget {
  const SeekBar(
      {super.key,
      required this.position,
      this.duration,
      required this.onChange,
      required this.onChangeEnd});

  final Duration position;
  final Duration? duration;
  final ValueChanged<Duration> onChange;
  final ValueChanged<Duration> onChangeEnd;

  @override
  State<SeekBar> createState() => _SeekBarState();
}

class _SeekBarState extends State<SeekBar> {
  double? _dragValue = 0.0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(widget.position.toString().split('.').first),
        Expanded(
          child: SliderTheme(
            data: SliderTheme.of(context).copyWith(
                trackHeight: 4,
                thumbColor: Colors.white,
                overlayColor: Colors.white,
                thumbShape: const RoundSliderThumbShape(
                    enabledThumbRadius: 8, disabledThumbRadius: 4),
                overlayShape: RoundSliderOverlayShape(overlayRadius: 10),
                activeTrackColor: Colors.white,
                inactiveTrackColor: Colors.white.withOpacity(0.4)),
            child: Slider(
              min: 0.0,
              max: widget.duration?.inMilliseconds.toDouble() ?? 0.0,
              value: min(
                  _dragValue ?? widget.position.inMilliseconds.toDouble(),
                  widget.duration?.inMilliseconds.toDouble() ?? 0.0),
              onChanged: (value) {
                setState(() {
                  _dragValue = value;
                });
                widget.onChange(Duration(milliseconds: value.toInt()));
              },
              onChangeEnd: (value) {
                if (widget.duration != null) {
                  widget.onChangeEnd(Duration(milliseconds: value.toInt()));
                }
                _dragValue = null;
              },
            ),
          ),
        ),
        Text(widget.duration?.toString().split('.').first ?? ''),
      ],
    );
  }
}
