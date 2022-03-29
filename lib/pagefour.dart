import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Pagefour extends StatelessWidget {
  const Pagefour({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          "Animation",
          style: TextStyle(fontSize: 15),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          children: [
            Lottie.network(
                'https://assets7.lottiefiles.com/private_files/lf30_utawq0rl.json'),
            SizedBox(
              height: 100,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/Pagefive");
              },
              child: Text("Next Page"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/pagethree");
              },
              child: Text("Go Back"),
            ),
          ],
        ),
      ),
    );
  }
}
