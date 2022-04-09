import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final getstarted = Container(
      height: 50,
      width: 312,
      child: ElevatedButton(
        onPressed: () {},
        child: Text('Get Started.'),
        style: ElevatedButton.styleFrom(
          primary: Color(0xffFFC76C),
          textStyle: TextStyle(
            fontSize: 18,
            color: Colors.black,
            fontWeight: FontWeight.normal,
          ),
        ),
      ),
    );

    final haveaccount = Container(
      height: 50,
      width: 312,
      child: ElevatedButton(
        onPressed: () {},
        child: Text(
          'I already have an account.',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 18,
            color: Colors.black,
            fontWeight: FontWeight.normal,
          ),
        ),
        style: ElevatedButton.styleFrom(
          primary: Colors.white,
        ),
      ),
    );

    return Scaffold(
      body: Container(
        color: Colors.black,
        child: Stack(
          children: [
            Positioned.fill(
              child: Image.asset('assets/imgs/bg2.png', fit: BoxFit.cover),
            ),
            Center(
              child: Container(
                height: 2560,
                width: 1440,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(24, 0, 24, 0),
                      child: ClipRect(
                        child: Container(
                          width: 240,
                          height: 220,
                          alignment: Alignment.topCenter,
                          child: Image.asset('assets/imgs/Home1.png',
                              fit: BoxFit.cover),
                        ),
                      ),
                    ),
                    // SizedBox(height: 180),
                    SizedBox(height: 24),
                    Padding(
                      padding: EdgeInsets.fromLTRB(24, 120, 24, 0),
                      child: Text(
                        'Hey, Welcome!',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    SizedBox(
                      height: 36,
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(24, 0, 24, 0),
                      child: getstarted,
                    ),
                    SizedBox(
                      height: 36,
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(24, 0, 24, 0),
                      child: haveaccount,
                    ),
                    SizedBox(height: 20),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
