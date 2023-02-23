import 'package:dd/MedScreen.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

// For The MedScreen
class TitleItem extends StatelessWidget {
  String title ;
  String ImagePath;
  TitleItem(this.title,this.ImagePath);

  @override
  Widget build(BuildContext context) {
    return  Column(
             children: [
               IconButton(onPressed: (){
                  Navigator.pushNamed(context, MedScreen.RouteName);
                      }, 
                  icon: 
                    Image.asset(ImagePath),
                     iconSize: 50,
                ),
               Text(title,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold
                  ),
                )
              ],               
            );
                  
  }
}