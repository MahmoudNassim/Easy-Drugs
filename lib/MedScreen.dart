import 'package:dd/LoginScreen.dart';
import 'package:dd/RegisterL.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MedScreen extends StatelessWidget {
  static const RouteName = 'MedScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image(
          image: AssetImage(
            ('Assets/Images/E5.png'),
          ),
          height: 80,
          width: 80,
        ),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.wifi)),
        ],
      ),
      drawer: Drawer(),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Column(
          children: [
            Text(
              'أبيمول',
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            Image(
              image: AssetImage('Assets/Images/AB.jpg'),
            ),
            SizedBox(
              height: 40.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Text(
                    "السعر : 8 جنيه مصري ",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 40.0,
            ),
            Container(
              color: Colors.blue,
              width: 300,
              child: MaterialButton(
                onPressed: () {
                  showDialog(context: context, builder: (context){
                      return AlertDialog(
                          content: Text('أيهما أنت ؟'),
                          actions: [
                            ElevatedButton(onPressed: (){Navigator.pushNamed(context, LoginScreen.RouteName);}, child: Text("عميل قديم")),
                            ElevatedButton(onPressed: (){Navigator.pushNamed(context, RegisterL.RouteName);}, child: Text("عميل جديد")),
                          ],
                      );
                  });
                },
                child: Text(
                  'شراء الأن',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
