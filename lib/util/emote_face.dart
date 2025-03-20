import 'package:flutter/material.dart';

class Emote extends StatefulWidget {
  final String emote;

  const Emote({
    Key? key,
    required this.emote,
  }) : super(key: key);

  @override
  State<Emote> createState() => _EmoteState();
}

class _EmoteState extends State<Emote> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue[600],
        borderRadius: BorderRadius.circular(12),
      ),
      padding: const EdgeInsets.all(12),  // Added 'const'
      child: Center(
        child: Text(
          widget.emote,  // Fixed: Now uses the passed emoji
          style: const TextStyle(
            fontSize: 28,
          ),
        ),
      ),
    );
  }
}
