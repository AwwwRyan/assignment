import 'package:assignment/reusable/fooditem.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});


  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  var t = TextEditingController();
  //as api data is fetched, it is appended into this list
  List<Widget> gridViewWidgets = [
    Padding(
      padding: EdgeInsets.only(left: 16.0),
      child: Container(
        height: 80,
        child: Text("Found \n80 results",style: TextStyle(fontFamily: 'rimouski',fontSize: 28.0,
            fontWeight: FontWeight.w700)),
      ),
    ),
    fooditem(
        food_image: "assets/bowl.png",
        food_name: "soup",
        food_description: "good soup",
        food_calorie: "123",
        food_price: "23"),
    fooditem(
        food_image: "assets/bowl.png",
        food_name: "noodles",
        food_description: "good noodles",
        food_calorie: "123",
        food_price: "12"),
    fooditem(
        food_image: "assets/bowl.png",
        food_name: "rice",
        food_description: "good rice",
        food_calorie: "123",
        food_price: "2.23"),
    fooditem(
        food_image: "assets/bowl.png",
        food_name: "soup",
        food_description: "good soup",
        food_calorie: "123",
        food_price: "2"),
    fooditem(
        food_image: "assets/bowl.png",
        food_name: "soup",
        food_description: "good soup",
        food_calorie: "123",
        food_price: "2"),
    fooditem(
        food_image: "assets/bowl.png",
        food_name: "soup",
        food_description: "good soup",
        food_calorie: "123",
        food_price: "2"),
    fooditem(
        food_image: "assets/bowl.png",
        food_name: "soup",
        food_description: "good soup",
        food_calorie: "123",
        food_price: "2")
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text('Search Food',
            style: TextStyle(
                fontFamily: 'rimouski',
                fontSize: 24.0,
                fontWeight: FontWeight.w700)),
        centerTitle: true,
        actions: [
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                fixedSize: Size(50.0, 50.0),
                padding: EdgeInsets.zero,),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                'assets/man.png',
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          //search and filter
          Row(
            children: [
              Spacer(),
              //search bar
              Container(
                width: MediaQuery.sizeOf(context).width * 0.75,
                child: TextField(
                  controller: t,
                  style: TextStyle(color: Color(0xFF000000), fontSize: 20),
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search, color: Colors.black87),
                    hintText: 'Search',
                    fillColor: Colors.grey.shade100,
                    filled: true,
                    hintStyle: TextStyle(color: Colors.grey),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(18),
                        borderSide: BorderSide(
                          color: Color(0xFFFFFFFF),
                        )),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(18),
                        borderSide: BorderSide(
                          color: Color(0xFFFFFFFF),
                        )),
                  ),
                  onChanged: (value) {
                    setState(() {
                      //builder will be activated
                    });
                  },
                ),
              ),
              //filter button
              Container(
                width: 10,
              ),
              ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    fixedSize: Size(50.0, 50.0),
                    padding: EdgeInsets.zero,
                    backgroundColor: Colors.yellow,
                  ),
                  child: Icon(Icons.filter_list_alt, color: Colors.black87)),
              Spacer(),
            ],
          ),

          Row(
            children: [
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.8,
                width: MediaQuery.of(context).size.width,
                child: MasonryGridView.builder(
                    itemCount: 6, //can be changed acc to api
                    gridDelegate:
                        SliverSimpleGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2),
                    itemBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: gridViewWidgets[index])),
              ),
            ],
          )
        ],
      ),
    );
  }
}
