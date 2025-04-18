import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  final List<Map<String, dynamic>> SettingItems = [
    {"title": "Edit Profile", "icon": Icon(Icons.edit)},
    {"title": "Order History", "icon": Icon(Icons.delivery_dining)},
    {"title": "Shipping Details", "icon": Icon(Icons.location_pin)},
    {"title": "All Coupons", "icon": Icon(Icons.money)},
    {"title": "Change Password", "icon": Icon(Icons.lock)},
    {"title": "Logout", "icon": Icon(Icons.logout)},
  ];
  List<String> languages = ["English", "Khmer"];
  String? selectedlanguages = "English";

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings", style: TextStyle(color: Color(0xffE55B5B))),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Icon(Icons.notifications),
          ),
        ],
      ),

      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 238, 235, 235),
            ),
            padding: EdgeInsets.all(15),
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(
                      color: Color.fromARGB(255, 5, 113, 95),
                      width: 3,
                    ),
                  ),
                  child: CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('assets/images/profile.png'),
                  ),
                ),
                SizedBox(width: 15),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Phann Sakana",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "PhannSakana168@gmail.com",
                      style: TextStyle(
                        color: Color.fromARGB(255, 144, 144, 146),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          ListTile(
            title: DropdownButton
            ( icon: Icon(Icons.keyboard_arrow_down),
            value: selectedlanguages,
            onChanged: (value){
              setState(() {

                selectedlanguages = value;
              });
            },
              items:
                  languages
                      .map(
                        (item) =>
                            DropdownMenuItem(value: item, child: Text(item)),
                      )
                      .toList(),
            ),
            // title: GestureDetector(
            //   onTap: () {
            //     showBottomSheet(
            //       context: context,
            //       builder: (context) {
            //         return Container(
            //           width: double.infinity,
            //           height: MediaQuery.of(context).size.height * 0.5,
            //           decoration: BoxDecoration(
            //             borderRadius: BorderRadius.circular(10),
            //           ),
            //         );
            //       },
            //     );
            //   },
              //        showDialog(context: context, builder: (context)){
              //         return Dialog(
              // child: Container(
              //   child: Column(
              // mainAxisSize: MainAxisSize.min,
              // children: [
              //   Text("Change the languages"),
              //   ElevatedButton(onPressed: (){}, child: Text("submit"))
              // ], ),
              // ),);}
            //   child: Row(
            //     children: [
            //       Text(
            //         "English",
            //         style: TextStyle(
            //           fontSize: 16,
            //           color: Color.fromARGB(255, 144, 144, 146),
            //         ),
            //       ),
            //       Icon(Icons.keyboard_arrow_down),
            //     ],
            //   ),
            // ),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Dark mode",
                  style: TextStyle(
                    fontSize: 16,
                    color: Color.fromARGB(255, 144, 144, 146),
                  ),
                ),
                Switch(
                  padding: EdgeInsets.all(5),
                  value: false,
                  onChanged: (value) {},
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: ListView.separated(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(color: Color(0xffEFEFEF)),
                  child: ListTile(
                    leading: SettingItems[index]['Icon'],
                    title: Text(SettingItems[index]['title']),
                    trailing: Icon(Icons.arrow_forward_ios, size: 20),
                  ),
                );
              },
              separatorBuilder: (context, index) => SizedBox(height: 20),
              itemCount: SettingItems.length,
            ),
          ),
        ],
      ),
    );
  }
}
