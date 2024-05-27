import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class fooditem extends StatelessWidget {
  final food_image;
  final String food_name;
  final String food_description;
  final String food_calorie;
  final String food_price;

  const fooditem(
      {super.key,
      required this.food_image,
      required this.food_name,
      required this.food_description,
      required this.food_calorie,
      required this.food_price});

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: MediaQuery.of(context).size.height*0.40,
      width: MediaQuery.of(context).size.width*0.40,
      color: Colors.white,
      child: InkWell(onTap: () {
        //go to next screen
        print('tapped');
      },
        child: Stack(
          //image, name, description, calories, price
          children: [
            Positioned(top: MediaQuery.of(context).size.height*0.05, // Adjust offset for image height
                left: 0,
                right: 0,
                child: Container(
                  height: MediaQuery.of(context).size.height*0.35,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: BorderRadius.circular(10.0), // Adjust radius as needed
                  ),
                  child: Column(
                    children: [
                      Container(height: 80,),
                      Text(food_name,style: TextStyle(fontFamily: 'rimouski',fontSize: 18.0,
                          fontWeight: FontWeight.w700)),
                      Text(food_description,style: TextStyle(fontFamily: 'rimouski',fontSize: 12.0,
                          fontWeight: FontWeight.w500)),
                      Container(height: 8,),
                      Row(mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.local_fire_department_rounded),
                          Text(food_calorie+" calories",style: TextStyle(fontFamily: 'rimouski',fontSize: 12.0,
                              fontWeight: FontWeight.w500,color: Colors.red)),
                        ],
                      ),
                      Container(height: 10,),
                      Row(mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.attach_money_rounded),
                          Text(food_price,style: TextStyle(fontFamily: 'rimouski',fontSize: 24.0,
                              fontWeight: FontWeight.w500)),
                        ],
                      ),
                    ],
                  ),
                )
            ),
            Positioned(
              top: 0, // Adjust offset for image height
              left: 0,
              right: 0,
              child: Container(
                height: 100,
                width: 100,
                child: Image.asset(
                  food_image, // Replace with your image path
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
