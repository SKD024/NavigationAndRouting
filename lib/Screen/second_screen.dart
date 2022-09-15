import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'third_screen.dart';

class SecondScreeen extends StatelessWidget {
  const SecondScreeen({Key? key, required this.dataFromFirst})
      : super(key: key);
  final String dataFromFirst;
  @override
  Widget build(BuildContext context) {
    final dataFromNamedRoute = ModalRoute.of(context)?.settings.arguments;
    print('data form first with named route: ${dataFromNamedRoute}');
    return WillPopScope(
      onWillPop: () async {
        Navigator.pop(context, 'afa3fa');
        return false;
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text('Second Screen'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Data: $dataFromFirst'),
              SizedBox(
                height: 20,
              ),
              OutlinedButton(
                onPressed: () {
                  Navigator.pop(context, 'Result from Second Screen');
                },
                child: Text('Go Back To First Page'),
              ),
              SizedBox(
                height: 20,
              ),
              OutlinedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    CupertinoPageRoute(
                      builder: (ctx) {
                        return ThirdScreen();
                      },
                    ),
                  );
                },
                child: Text('Go To Third Page'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
