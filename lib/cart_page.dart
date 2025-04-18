import 'package:e_commerce_small_app/widgets/custom_button_widget.dart';
import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  List<Map<String, dynamic>> Products = [
    {
      'name': 'Jacket Jeans',
      'price': '\45',
      'image': 'blazer.jpg',
      'isAdded': false,
      'color': Colors.grey,
      'Size': "L",
    },
    {
      'name': 'Acrylic Sweater',
      'price': '\37.0',
      'image': 'jeans.jpg',
      'isAdded': false,
      'color': Color(0xff7094C1),
      'Size': "M",
    },

    {
      'name': 'Red Jacket',
      'price': '\75',
      'image': 'pink sweater.jpg',
      'isAdded': false,
      'isAdded': false,
      'color': Color(0xffF68CB5),
      'Size': "M",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 70,
        leading: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(width: 15),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: Icon(Icons.arrow_back_ios),
            ),
          ],
        ),
        centerTitle: true,
        title: Text("My Cart"),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/images/profile.png'),
            ),
          ),
        ],
        backgroundColor: Colors.transparent,
      ),

      backgroundColor: Colors.transparent,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 30),
              ListView.separated(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  
                  return Container(
                    height: 150,
                    width: double.infinity,
          
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            width: 120,
                            height: 150,
                            fit: BoxFit.cover,
                            "assets/images/${Products[index]['image']}",
                          ),
                        ),
                        SizedBox(width: 15),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    spacing: 20,
                                    children: [
                                      Text(
                                        Products[index]['name'],
                                        style: TextStyle(
                                          fontSize: 20,
                                          color: Color(0xff444444),
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      Icon(
                                        Icons.delete,
                                        color: Color(0xfff68CB5),
                                      ),
                                    ],
                                  ),
          
                                  Text(
                                    "\$${Products[index]['price']}",
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Color(0xff797979),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Container(
                                    width: 40,
                                    height: 40,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Products[index]['color'],
                                    ),
                                  ),
          
                                  Container(
                                    width: 40,
                                    alignment: Alignment.center,
                                    height: 40,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.white,
                                    ),
                                    child: Text(
                                      Products[index]['Size'],
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Color(0xff444444),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
          
                separatorBuilder: (context, index) => SizedBox(height: 10),
                itemCount: Products.length,
              ),
  
                ListTile(
                  title: Text(
                    "Total:",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff888888),
                    ),
                  ),
                  trailing: Text("\$119.7",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff888888),
                    ),
                ),
                ),
              ListTile(
                title: Text(
                  "Total:",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff888888),
                  ),
                ),
                trailing: Text("\$0.0",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff888888),
                  ),
              ),
              ),
              Divider(
                color: Colors.white,
              ),
               ListTile(
                title: Text(
                  "Grand Total:",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff888888),
                  ),
                ),
                trailing: Text("\$119.7",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff888888),
                  ),
              ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: CustomButtonWidget(textButton: "Checkout", onPressed: () {}),
      ),
    );
  }
}
