import 'package:flutter/material.dart';

import 'page3.dart';

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 2'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Page 2'),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/page3');
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => Page3(),
                //   ),
                // );
              },
              child: Text('Go to page 3'),
            ),
          ],
        ),
      ),
    );
  }
}
