import 'package:dd/HomeS/ShoppingCart.dart';
import 'package:dd/HomeS/profile.dart';
import 'package:dd/TitleItem.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const RouteName = 'HomeScreen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int SelectedIndex = 0;
  List<Widget> Tabs = [
    HomeS(),
    ShoppingCart(),
    Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: SelectedIndex,
        onTap: (index){
          setState(() {
            SelectedIndex = index;
          });
          
        },
        backgroundColor: Colors.white,
        items: [
              BottomNavigationBarItem(label: 'Home',icon: Icon(Icons.home),),
              BottomNavigationBarItem(label: 'Shopping Cart',icon: Icon(Icons.shopping_cart),),
              BottomNavigationBarItem(label: 'Profile',icon: Icon(Icons.person),), 
                         
      ]),
      appBar: AppBar(
        title: Text('Easy Drugs',
        style: TextStyle(fontWeight:FontWeight.bold,
                          fontSize: 30,
        ),
        
        
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
        ],
      ),
      body: Tabs.elementAt(SelectedIndex)
    );
  }
}
class HomeS extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Container(
          width: double.infinity,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Text(
                  ' مما تعاني ؟ ',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    TitleItem('ارتفاع درجة الحرارة', 'Assets/Images/T.jpg'),
                    SizedBox(
                      width: 30,
                    ),
                    TitleItem('الغثيان', 'Assets/Images/D.jpg'),
                    SizedBox(
                      width: 30,
                    ),
                    TitleItem('الصداع', 'Assets/Images/He.jpg'),
                    SizedBox(
                      width: 30,
                    ),
                    TitleItem('السعال', 'Assets/Images/S.jpg'),
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                Row(
                  children: [
                    TitleItem('ارتفاع درجة الحرارة', 'Assets/Images/T.jpg'),
                    SizedBox(
                      width: 30,
                    ),
                    TitleItem('الغثيان', 'Assets/Images/D.jpg'),
                    SizedBox(
                      width: 30,
                    ),
                    TitleItem('الصداع', 'Assets/Images/He.jpg'),
                    SizedBox(
                      width: 30,
                    ),
                    TitleItem('السعال', 'Assets/Images/S.jpg'),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    TitleItem('ارتفاع درجة الحرارة', 'Assets/Images/T.jpg'),
                    SizedBox(
                      width: 30,
                    ),
                    TitleItem('الغثيان', 'Assets/Images/D.jpg'),
                    SizedBox(
                      width: 30,
                    ),
                    TitleItem('الصداع', 'Assets/Images/He.jpg'),
                    SizedBox(
                      width: 30,
                    ),
                    TitleItem('السعال', 'Assets/Images/S.jpg'),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    TitleItem('ارتفاع درجة الحرارة', 'Assets/Images/T.jpg'),
                    SizedBox(
                      width: 30,
                    ),
                    TitleItem('الغثيان', 'Assets/Images/D.jpg'),
                    SizedBox(
                      width: 30,
                    ),
                    TitleItem('الصداع', 'Assets/Images/He.jpg'),
                    SizedBox(
                      width: 30,
                    ),
                    TitleItem('السعال', 'Assets/Images/S.jpg'),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    TitleItem('ارتفاع درجة الحرارة', 'Assets/Images/T.jpg'),
                    SizedBox(
                      width: 30,
                    ),
                    TitleItem('الغثيان', 'Assets/Images/D.jpg'),
                    SizedBox(
                      width: 30,
                    ),
                    TitleItem('الصداع', 'Assets/Images/He.jpg'),
                    SizedBox(
                      width: 30,
                    ),
                    TitleItem('السعال', 'Assets/Images/S.jpg'),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    TitleItem('ارتفاع درجة الحرارة', 'Assets/Images/T.jpg'),
                    SizedBox(
                      width: 30,
                    ),
                    TitleItem('الغثيان', 'Assets/Images/D.jpg'),
                    SizedBox(
                      width: 30,
                    ),
                    TitleItem('الصداع', 'Assets/Images/He.jpg'),
                    SizedBox(
                      width: 30,
                    ),
                    TitleItem('السعال', 'Assets/Images/S.jpg'),
                  ],
                ),
              ],
            ),
          ),
        ),
      );
  }
}