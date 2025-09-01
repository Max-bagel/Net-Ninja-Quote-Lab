import 'package:flutter/material.dart';
import 'quote.dart';
import 'random.dart';

class QuoteCard extends StatefulWidget {
  final Quote quote;
  const QuoteCard({super.key, required this.quote});

  @override
  State<QuoteCard> createState() => _QuoteCardState();
}

class _QuoteCardState extends State<QuoteCard> {
  String category = RandomCategory().getRandomCategory();

  Color cardColor(String c) => switch (c.toLowerCase()) {
    'general' => Colors.amber.shade100,
    'business' => Colors.blue.shade100,
    _ => Colors.grey.shade100,
  };

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
      color: cardColor(category),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              widget.quote.text,
              style: TextStyle(fontSize: 18.0, color: Colors.grey[600]),
            ),
            SizedBox(height: 6.0),
            Text(
              widget.quote.author,
              style: TextStyle(fontSize: 14.0, color: Colors.grey[800]),
            ),
            SizedBox(height: 6.0),
            Wrap(spacing: 8, children: [Chip(label: Text(category))]),
          ],
        ),
      ),
    );
  }
}
