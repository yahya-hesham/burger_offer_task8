import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: RamadanProjectScreen());
  }
}

class RamadanProjectScreen extends StatefulWidget {
  @override
  _RamadanProjectScreenState createState() => _RamadanProjectScreenState();
}

class _RamadanProjectScreenState extends State<RamadanProjectScreen> {
  int counter = 0;
  double price = 160;
  double price2 = 0;
  void incrementCounter() {
    setState(() {
      counter++;
      if (counter == 0 || counter == 1) {
        price2 = 160;
      } else {
        price2 += price;
      }
    });
  }

  void decrementounter() {
    setState(() {
      if (counter > 0) {
        counter--;
        if (counter == 0 || counter == 1) {
          price2 = 160;
        } else {
          price2 -= price;
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFffebd2),
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            Container(
              height: 250,
              width: 500,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(40),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(40),
                child: Image.asset(
                  'lib/photos/ramdandeal.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Burger Mix Combo",
              style: TextStyle(
                color: Color(0xFFb14c45),
                fontSize: 25,
                fontWeight: FontWeight.bold,
                letterSpacing: 0.5,
                fontStyle: FontStyle.normal,
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Icon(Icons.star),
                SizedBox(width: 10),
                Text('4(5)', style: TextStyle(fontSize: 15)),
                Spacer(),
                Container(
                  height: 50,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Color(0xFFfe9166),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(4),
                    child: Row(
                      children: [
                        Container(
                          height: 50,
                          width: 50,

                          decoration: BoxDecoration(
                            color: Color(0xFFffebd1),
                            shape: BoxShape.circle,
                          ),
                          child: IconButton(
                            onPressed: decrementounter,
                            icon: Icon(Icons.remove, color: Color(0Xffae4f41)),
                          ),
                        ),
                        Spacer(),
                        Text(
                          '$counter',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Spacer(),
                        Container(
                          height: 50,
                          width: 50,

                          decoration: BoxDecoration(
                            color: Color(0Xffae4f41),
                            shape: BoxShape.circle,
                          ),
                          child: IconButton(
                            onPressed: incrementCounter,
                            icon: Icon(Icons.add, color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              "Description",
              style: TextStyle(
                fontSize: 25,
                color: Color(0xFFaa4d42),
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "2 Burger + fries + drink with 30% Sale",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Text(
                  "EGP $price2 ",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Container(
                  width: 200,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Color(0xFFfe9166),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Center(
                    child: Text(
                      "ADD TO CART",
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Divider(
              color: Colors.grey,
              thickness: 1,
              indent: 10,
              endIndent: 10,
            ),
            SizedBox(height: 10),
            Container(
              width: 400,
              height: 100,
              decoration: BoxDecoration(color: Color(0xFFfbd6a9)),
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Review",
                          style: TextStyle(
                            color: Color(0xFFa44f3a),
                            fontSize: 25,
                          ),
                        ),
                        Spacer(),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.arrow_downward),
                        ),
                      ],
                    ),
                    Text(
                      "Send Your Fedback Now",
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
