import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ProductDetail extends StatefulWidget {
  // const ProductDetail({Key? key}) : super(key: key);

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xff186C57),
            Color(0xff114235),
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Color(0xff00000000),
        appBar: AppBar(
          backgroundColor: Color(0xff00000000),
          title: Text("Product details"),
          centerTitle: true,
        ),
        body: SafeArea(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 24),
                    child: Container(
                      height: 270,
                      width: 190,
                      color: Colors.white38,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 23),
                child: Text(
                  "Harry Potter and the half blood prince",
                  style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                      color: Colors.white60),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 225),
                child: Text(
                  "Imdb: Number",
                  style: TextStyle(fontSize: 15, color: Colors.white54),
                ),
              ),
              SizedBox(
                height: 3,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Row(
                  //mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    RatingBarIndicator(
                      rating: 3.5,
                      itemBuilder: (context, index) => Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      itemCount: 5,
                      itemSize: 20,
                      direction: Axis.horizontal,
                    ),
                    Text(
                      "  (108 Reviews)",
                      style: TextStyle(fontSize: 15, color: Colors.white60),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  OutlinedButton(
                    onPressed: () {},
                    child: Text(
                      "Details",
                      style: TextStyle(
                        color: Colors.white70,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    style: OutlinedButton.styleFrom(
                      backgroundColor: Color(0xff08211A),
                      primary: Colors.white,
                      fixedSize: Size(150, 50),
                      side: BorderSide(
                        width: 3,
                        color: Color(0xff08211A),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  OutlinedButton(
                    onPressed: () {},
                    child: Text(
                      "Reviews",
                      style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    style: OutlinedButton.styleFrom(
                      backgroundColor: Colors.white70,
                      primary: Colors.teal,
                      fixedSize: Size(150, 50),
                      side: BorderSide(
                        width: 3,
                        color: Colors.white38,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Row(
                  children: [
                    Text(
                      "Descriptions",
                      style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.bold,
                          color: Colors.white60),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 6,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Container(
                  child: Text(
                    "In Harry Potter's (Daniel Radcliffe's) sixth year at Hogwarts School of Witchcraft, he finds a book marked mysteriously, 'This book is the property of the Half Blood Prince, which helps him excel at Potions class and teaches him a few dark and dangerous ones along the way. '",
                    style: TextStyle(fontSize: 19),
                  ),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  OutlinedButton(
                    onPressed: () {},
                    child: Text(
                      "Watch Now",
                      style: TextStyle(
                        color: Colors.white70,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    style: OutlinedButton.styleFrom(
                      backgroundColor: Color(0xff08211A),
                      primary: Colors.white,
                      fixedSize: Size(150, 50),
                      side: BorderSide(
                        width: 3,
                        color: Color(0xff08211A),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  OutlinedButton(
                    onPressed: () {},
                    child: Text(
                      "BookMark",
                      style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    style: OutlinedButton.styleFrom(
                      backgroundColor: Colors.white70,
                      primary: Colors.teal,
                      fixedSize: Size(150, 50),
                      side: BorderSide(
                        width: 3,
                        color: Colors.white38,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
