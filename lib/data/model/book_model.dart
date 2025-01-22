class BookModel {
  final int id;
  final String title;
  final String description;
  final double price;
  final String imagePath;
  final double rate;
  final int countComments;
  final String author;

  BookModel({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.imagePath,
    required this.rate,
    required this.countComments,
    required this.author,
  });
}
