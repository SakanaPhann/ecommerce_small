import 'package:e_commerce_small_app/widgets/custom_button_widget.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  final Map<String, dynamic> Products;
  const DetailPage({super.key, required this.Products});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  List<String> sizes = ["S", "M", "L", "XL"];
  List<Color> colors = [
    Color(0xff91A1B0),
    Color(0xffB11D1D),
    Color(0xff1F44A3),
    Color(0xff9F632A),
    Color(0xff1D752B),
    Color(0xff000000),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 450,
            actions: [
              Icon(Icons.favorite_border_outlined),
              SizedBox(width: 15),
            ],

            flexibleSpace: FlexibleSpaceBar(
              background: Hero(
                tag: widget.Products['name'],
                child: Image.asset(
                  fit: BoxFit.cover,
                  "assets/images/${widget.Products['image']}",
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        widget.Products['name'],
                        style: TextStyle(
                          fontSize: 20,
                          color: Color(0xff444444),
                        ),
                      ),
                      Text(
                        "\$${widget.Products['price']}",
                        style: TextStyle(
                          fontSize: 20,
                          color: Color(0xff4D4C4C),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15),

                  Text(
                    "Size",
                    style: TextStyle(fontSize: 20, color: Color(0xff444444)),
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ListView.separated(
                      separatorBuilder: (context, index) => SizedBox(width: 20),
                      itemCount: sizes.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder:
                          (context, index) => Container(
                            alignment: Alignment.center,
                            width: 36,
                            height: 36,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                            ),
                            child: Text(
                              sizes[index],
                              style: TextStyle(
                                fontSize: 20,
                                color:
                                    index == 1
                                        ? Color(0xffE55B5B)
                                        : Color(0xff444444),
                              ),
                            ),
                          ),
                    ),
                  ),
                  SizedBox(height: 15),

                  Text(
                    "Colors",
                    style: TextStyle(fontSize: 20, color: Color(0xff444444)),
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 85,
                    child: ListView.separated(
                      separatorBuilder: (context, index) => SizedBox(width: 20),
                      itemCount: colors.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder:
                          (context, index) => Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border:
                                  index == 0
                                      ? Border.all(
                                        color: colors[index],
                                        width: 2,
                                      )
                                      : null,
                            ),
                            child: Container(
                              alignment: Alignment.center,
                              width: 36,
                              height: 36,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: colors[index],
                              ),
                            ),
                          ),
                    ),
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: CustomButtonWidget(
          textButton: "Add to Cart", onPressed: (){}, 
        ),
      ),
    );
  }
}
