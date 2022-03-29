import 'package:flutter/material.dart';

class Pagetwo extends StatelessWidget {
  const Pagetwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("Google Fonts"),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hi, There \nThanks for visiting this App",
              style: TextStyle(fontSize: 40, color: Colors.deepPurple),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/Pageone");
              },
              child: Text("Go Back"),
            ),
            SizedBox(
              height: 15,
              width: 20,
            ),
            Align(
              alignment: Alignment.centerRight,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/pagethree");
              },
              child: Text("Next Page"),
            ),
          ],
        ),
      ),
    );
  }
}
