import 'package:flutter/material.dart';

class Pagefive extends StatelessWidget {
  const Pagefive({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          "Responsive Design",
          style: TextStyle(fontSize: 15),
        ),
      ),
      body: Column(
        children: [
          AspectRatio(
            aspectRatio: 4 / 2,
            child: Container(
              height: 200,
              width: 200,
              color: Colors.green,
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, "/Pagefour");
            },
            child: Text("Go Back"),
          ),
        ],
      ),
    );
  }
}
