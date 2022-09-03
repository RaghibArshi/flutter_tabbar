import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyCustomWidget extends StatefulWidget {
  const MyCustomWidget({Key key}) : super(key: key);

  @override
  State<MyCustomWidget> createState() => _MyCustomWidgetState();
}

class _MyCustomWidgetState extends State<MyCustomWidget> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightGreen,
          title: Text('TabBar Widget'),
          bottom: TabBar(
            labelColor: Colors.black,
            unselectedLabelColor: Colors.blueGrey,
            indicatorColor: Colors.black,
            tabs: <Widget>[
              Tab(
                // text: 'Tab One',
                // icon: Icon(Icons.cloud),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.fastfood),
                    SizedBox(width: 10.0,),
                    Text("Snacks")
                  ],
                ),
              ),
              Tab(
                // text: 'Tab Two',
                // icon: Icon(Icons.beach_access),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.emoji_food_beverage),
                    SizedBox(width: 10.0,),
                    Text("Coffee")
                  ],
                ),
              ),
              Tab(
                // text: 'Tab Three',
                // icon: Icon(Icons.sunny),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.sports_gymnastics),
                    SizedBox(width: 10.0,),
                    Text("Exercise")
                  ],
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[

            // ---------------------------------------------------------------> First Tab Page Layout

            // Center(
            //   child: Text("It's cloudy here"),
            // ),

            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                      ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                          child: Image.asset(
                            "assets/tabbar_1.jpg", fit: BoxFit.fill,
                            height: 300,
                            width: double.infinity,
                          ),
                      ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text('Snacks (Burger)', style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold)),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text('The term burger can also be applied to the meat patty on its own, especially in the United Kingdom, '
                        'where the term patty is rarely used. Hamburgers are typically sold at fast-food restaurants, diners, '
                        'and specialty and high-end restaurants. There are many international and regional variations of hamburgers.'),
                    Text('The term burger can also be applied to the meat patty on its own, especially in the United Kingdom, '
                        'where the term patty is rarely used. Hamburgers are typically sold at fast-food restaurants, diners, '
                        'and specialty and high-end restaurants. There are many international and regional variations of hamburgers.'),
                    Text('The term burger can also be applied to the meat patty on its own, especially in the United Kingdom, '
                        'where the term patty is rarely used. Hamburgers are typically sold at fast-food restaurants, diners, '
                        'and specialty and high-end restaurants. There are many international and regional variations of hamburgers.'),
                    Text('The term burger can also be applied to the meat patty on its own, especially in the United Kingdom, '
                        'where the term patty is rarely used. Hamburgers are typically sold at fast-food restaurants, diners, '
                        'and specialty and high-end restaurants. There are many international and regional variations of hamburgers.'),
                    Text('The term burger can also be applied to the meat patty on its own, especially in the United Kingdom, '
                        'where the term patty is rarely used. Hamburgers are typically sold at fast-food restaurants, diners, '
                        'and specialty and high-end restaurants. There are many international and regional variations of hamburgers.'),
                  ],
                ),
              ),
            ),

            // ---------------------------------------------------------------> Second Tab Page Layout

            // Center(
            //   child: Text("It's rainy here"),
            // ),

            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      child: Image.asset(
                        "assets/tabbar_2.jpg", fit: BoxFit.fill,
                        height: 300,
                        width: double.infinity,
                      ),
                    ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text('Coco Beans (Coffee)', style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text("Coffee is a drink prepared from roasted coffee beans made from seeds of Coffea plant species. It is darkly colored, bitter, slightly acidic and has a stimulating effect in humans, primarily due to its caffeine content, and is one of the most popular drinks in the world.")
                ],
              ),
            ),


            // ---------------------------------------------------------------> Third Tab Page Layout

            // Center(
            //   child: Text("It's sunny here"),
            // ),

            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      child: Image.asset(
                        "assets/tabbar_3.jpg", fit: BoxFit.fill,
                        height: 300,
                        width: double.infinity,
                      ),
                    ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text('Workout (Exercise)', style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text("Exercise is a body activity that enhances or maintains physical fitness and overall health and wellness. It is performed for various reasons, to aid growth and improve strength, develop muscles and the cardiovascular system, hone athletic skills, weight loss or maintenance, improve health."),
                ],
              ),
            ),


          ],
        ),
      ),
    );
  }
}
