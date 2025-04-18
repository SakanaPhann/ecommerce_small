import 'package:e_commerce_small_app/detail_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _MyAppState();
}

class _MyAppState extends State<HomePage> {
  @override
  List<String> categories = ["Trending Now", "All", "New"];
  List<Map<String, dynamic>> Products = [
    {
      'name': 'Jacket Jeans',
      'price': '\45',
      'image': 'blazer.jpg',
      'isAdded': false,
    },
    {
      'name': 'Acrylic Sweater',
      'price': '\37.0',
      'image': 'jeans.jpg',
      'isAdded': false,
    },
    {
      'name': 'Red Jacket',
      'price': '\75',
      'image': 'shirt.png',
      'isAdded': true,
    },
    {
      'name': 'Red Jacket',
      'price': '\75',
      'image': 'pink sweater.jpg',
      'isAdded': false,
    },
    {
      'name': 'Red Jacket',
      'price': '\75',
      'image': 'pink sweater.jpg',
      'isAdded': false,
    },
    {
      'name': 'Acrylic Sweater',
      'price': '\37.0',
      'image': 'jeans.jpg',
      'isAdded': false,
    },
    {
      'name': 'Jacket Jeans',
      'price': '\45',
      'image': 'blazer.jpg',
      'isAdded': false,
    },
  ];
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xffFDF0F3), Color(0xffFFFBFC)],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 3),
            child: Container(
              margin: EdgeInsets.only(left: 15),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),

              child: Image.asset('assets/images/apps.png'),
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/profile.png'),
              ),
            ),
          ],
        ),

        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 30),
                Text(
                  "Match Your Style",
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.w500),
                ),

                SizedBox(height: 21),

                SizedBox(
                  width: double.infinity,
                  height: 40,
                  child: TextField(
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      hintText: ("Search"),
                      hintStyle: TextStyle(color: Colors.grey),
                      prefixIcon: Icon(Icons.search, color: Colors.grey),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  height: 70,
                  child: ListView.separated(
                    separatorBuilder: (context, index) => SizedBox(width: 10),
                    scrollDirection: Axis.horizontal,
                    itemCount: categories.length,
                    itemBuilder: (context, index) {
                      return Chip(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                          side: BorderSide.none,
                        ),
                        backgroundColor:
                            index == 0 ? Color(0xffE96E6E) : Color(0xffDFDCDC),
                        label: Text(
                          categories[index],
                          style: TextStyle(
                            fontSize: 16,

                            fontWeight: FontWeight.w400,
                            color:
                                index == 0 ? Colors.white : Color(0xff938F8F),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(height: 10),
                MasonryGridView.builder(
                  itemCount: Products.length,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  // gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  //   crossAxisCount: 2,
                  //   crossAxisSpacing: 17,
                  //   mainAxisSpacing: 17,
                  //   childAspectRatio: 0.51,
                  // ),
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  gridDelegate: SliverSimpleGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  ),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder:
                                (context) =>
                                    DetailPage(Products: Products[index]),
                          ),
                        );
                      },
                      child: SizedBox(
                        width: 190,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Stack(
                              children: [
                                Hero(
                                  tag: Products[index]['name'],
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Image.asset(
                                      fit: BoxFit.cover,
                                      width: 190,

                                      "assets/images/${Products[index]['image']}",
                                    ),
                                  ),
                                ),
                                Positioned(
                                  right: 10,
                                  top: 10,
                                  child: Container(
                                    padding: EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle,
                                    ),
                                    child: Icon(
                                      Products[index]['isAdded'] == true
                                          ? Icons.favorite_rounded
                                          : Icons.favorite_outline,
                                      color: Color(0xffE55B5B),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 6),
                            Text(
                              Products[index]['name'],
                              style: TextStyle(
                                fontSize: 18,

                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              Products[index]['price'],
                              style: TextStyle(
                                fontSize: 18,
                                color: Color(0xff9C9C9C),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
