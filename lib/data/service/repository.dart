import 'package:books_app/data/model/book_model.dart';

class Repository {
  static List<BookModel> recommendedBooks = [
    BookModel(
      id: 1,
      title: "The Catcher in the Rye",
      description:
          "This novel captures the struggles of teenage rebellion. It explores the journey of self-discovery. Readers connect with its honest depiction of youth. The book remains a classic for generations. It also delves into themes of identity and belonging.",
      price: 9.99,
      imagePath: "assets/images/book5.png",
      rate: 4.2,
      countComments: 123,
    ),
    BookModel(
      id: 2,
      title: "To Kill a Mockingbird",
      description:
          "A powerful story set in the Deep South. It highlights issues of racial injustice. The characters are vivid and memorable. The book teaches empathy and understanding. It's a must-read for all generations.",
      price: 12.49,
      imagePath: "assets/images/book4.png",
      rate: 4.8,
      countComments: 234,
    ),
    BookModel(
      id: 3,
      title: "1984",
      description:
          "This dystopian novel remains relevant today. It depicts a society under constant surveillance. The story warns against totalitarian regimes. The characters show the struggle for freedom. It is a profound commentary on human rights.",
      price: 14.99,
      imagePath: "assets/images/book3.png",
      rate: 4.6,
      countComments: 456,
    ),
    BookModel(
      id: 4,
      title: "The Great Gatsby",
      description:
          "A tale of love and the American Dream. The characters are complex and intriguing. The story explores themes of wealth and ambition. Its prose is poetic and beautiful. It's a timeless masterpiece.",
      price: 10.99,
      imagePath: "assets/images/book2.png",
      rate: 4.4,
      countComments: 312,
    ),
    BookModel(
      id: 5,
      title: "Moby-Dick",
      description:
          "An epic tale of a whaling voyage. The novel explores obsession and revenge. The characters are vivid and symbolic. Its themes resonate deeply with readers. It is a cornerstone of American literature.",
      price: 11.99,
      imagePath: "assets/images/book1.png",
      rate: 3.9,
      countComments: 190,
    ),
  ];

  static List<BookModel> popularBooks = [
    BookModel(
      id: 11,
      title: "Anna Karenina",
      description:
          "A tragic tale of love and betrayal. The characters are complex and human. The novel explores societal expectations. It is both heartbreaking and captivating. Its themes remain relevant even today.",
      price: 13.99,
      imagePath: "assets/images/book5.png",
      rate: 4.7,
      countComments: 315,
    ),
    BookModel(
      id: 12,
      title: "Brave New World",
      description:
          "A vision of a dystopian future. The story questions societal norms. The characters struggle with individuality. It is both chilling and enlightening. A must-read for fans of speculative fiction.",
      price: 11.99,
      imagePath: "assets/images/book4.png",
      rate: 4.5,
      countComments: 410,
    ),
    BookModel(
      id: 13,
      title: "The Odyssey",
      description:
          "An epic tale of adventure and heroism. The protagonist's journey is legendary. It explores themes of loyalty and perseverance. The story is rich with mythology. It's a cornerstone of Western literature.",
      price: 16.49,
      imagePath: "assets/images/book3.png",
      rate: 4.6,
      countComments: 350,
    ),
    BookModel(
      id: 14,
      title: "Frankenstein",
      description:
          "A haunting story of creation and responsibility. The protagonist struggles with his choices. It raises questions about humanity and ethics. The writing is vivid and atmospheric. It's a masterpiece of Gothic literature.",
      price: 10.99,
      imagePath: "assets/images/book4.png",
      rate: 4.4,
      countComments: 295,
    ),
    BookModel(
      id: 15,
      title: "Wuthering Heights",
      description:
          "A tale of love and revenge. The characters are intense and passionate. The story explores themes of obsession. It is both dark and captivating. A must-read for fans of classic literature.",
      price: 12.49,
      imagePath: "assets/images/book5.png",
      rate: 4.3,
      countComments: 220,
    ),
  ];
}
