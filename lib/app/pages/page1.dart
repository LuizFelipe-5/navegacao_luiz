import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (!Navigator.canPop(context)) return Future.value(false);

        return Future.value(true);
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text('Page 1'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Page 1'),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/page2',
                      arguments: 'Veio da página 1');
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) => Page2(),
                  //   ),
                  // );
                },
                child: Text('Go to page 2'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
