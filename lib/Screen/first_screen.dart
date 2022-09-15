import 'package:flutter/material.dart';

import 'second_screen.dart';

class FirstScreeen extends StatelessWidget {
  const FirstScreeen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('First Screen'),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('First Screen'),
            SizedBox(
              height: 20,
            ),
            OutlinedButton(
              onPressed: () async {
                final dataFromSecond = await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (ctx) {
                      return SecondScreeen(
                        dataFromFirst: 'This is Data from first screen',
                      );
                    },
                  ),
                );
                print('Data: $dataFromSecond');
              },
              child: Text('Go to Second Screen'),
            ),
            SizedBox(
              height: 40,
            ),
            OutlinedButton(
              onPressed: () async {
                final data = await Navigator.pushNamed(
                  context,
                  'second',
                  arguments: 'This is data from Named Route',
                );
                print('data with name:$data');
              },
              child: Text("Go To SecondPage With name"),
            ),
          ],
        ),
      ),
    );
  }
}
