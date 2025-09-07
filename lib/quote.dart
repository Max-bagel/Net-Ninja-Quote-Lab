class Quote {
  final String text;
  final String author;
  int likes = 0; //NEW: Likes
  final DateTime createdAt; //NEW: DateTime

  Quote({
    required this.text,
    required this.author,
    this.likes = 0,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();
}
