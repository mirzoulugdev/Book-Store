import 'package:books_app/data/service/repository.dart';
import 'package:books_app/presentation/screens/details_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BooksScreen extends StatelessWidget {
  const BooksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Book of the Week",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.menu,
              color: Colors.black,
              size: 25,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset("assets/images/card.png"),
              Text(
                "Recommended for you",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 100,
                width: double.infinity,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: Repository.recommendedBooks.length,
                  itemBuilder: (context, index) {
                    final book = Repository.recommendedBooks[index];
                    return GestureDetector(
                      onTap: () => Navigator.of(context).push(
                        CupertinoPageRoute(
                          builder: (context) => DetailsScreen(
                            book: book,
                          ),
                        ),
                      ),
                      child: Image.asset(
                        width: 100,
                        height: 100,
                        book.imagePath,
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 20),
              Text(
                "Popular books",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                width: double.infinity,
                height: 400,
                child: ListView.builder(
                  itemCount: Repository.popularBooks.length,
                  itemBuilder: (context, index) {
                    final book = Repository.popularBooks[index];
                    return GestureDetector(
                      onTap: () => Navigator.of(context).push(
                        CupertinoPageRoute(
                          builder: (context) => DetailsScreen(
                            book: book,
                          ),
                        ),
                      ),
                      child: Container(
                        margin: const EdgeInsets.symmetric(vertical: 10),
                        height: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.grey.shade200,
                        ),
                        child: ListTile(
                          leading: Image.asset(book.imagePath),
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                book.title,
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "Austin Kleon",
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    "4.8",
                                    style: TextStyle(
                                      color: Colors.deepOrange,
                                      fontSize: 10,
                                    ),
                                  ),
                                  Text(
                                    "| Based on 2k Reviews",
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.grey.shade600,
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                "\$45.87",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey.shade800,
                                ),
                              ),
                            ],
                          ),
                          trailing: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.red,
                              padding: const EdgeInsets.all(0),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: Text(
                              "Grab Now",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
