import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:sizer/sizer.dart';
import 'productdetail.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var cat = ['All', 'Popular', 'Movies', 'Series', 'Animations'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[500],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 4),
              Padding(
                padding: const EdgeInsets.only(left: 24, right: 24),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.white60,
                  ),
                  child: TextField(
                    cursorColor: Colors.teal,
                    onChanged: (val) {},
                    decoration: InputDecoration(
                      suffixIcon: Padding(
                        padding: const EdgeInsets.only(right: 24),
                        child: Icon(
                          Icons.search,
                          color: Color(0xff08211A),
                          size: 35,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(24),
                        borderSide: BorderSide(
                          color: Color(0xff00000000),
                          width: 2,
                        ),
                      ),
                      hintText: "Search",
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(24),
                        borderSide: BorderSide(
                          color: Color(0xff00000000),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 3,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Container(
                  height: 60,
                  child: Column(
                    children: [
                      Expanded(
                        child: ListView.builder(
                          itemCount: cat.length,
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Botton('${cat[index]}'),
                            );
                          },
                        ),
                      )
                    ],
                  ),
                ),
              ),
              ListView.builder(
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: Container(
                        height: 110,
                        color: Colors.teal,
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 90,
                                width: 90,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Black Widow",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  'Rating:8.0',
                                  style: TextStyle(fontSize: 12),
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 90),
                              child: const Icon(Icons.bookmarks_outlined),
                            )
                          ],
                        ),
                      ),
                    );
                  }),
            ],
          ),
        ),
      ),
    );
  }
}

class Botton extends StatelessWidget {
  Botton(this.cat);
  var cat;
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {},
      child: Text(
        cat,
        style: TextStyle(
          color: Colors.teal,
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ),
      style: OutlinedButton.styleFrom(
        //  backgroundColor: Color(0xff1A6350),
        primary: Colors.white,
        fixedSize: Size(150, 10),
        side: BorderSide(
          width: 3,
          color: Color(0xff1A6350),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
    );
  }
}
