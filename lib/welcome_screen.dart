import 'package:flutter/material.dart';
import 'package:submission_alif/login_screen.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      body: Stack(
        children: <Widget>[
          Container(
              width: double.infinity,
              height: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 40.0),
              padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      offset: Offset(0.0, 3.0),
                      blurRadius: 15.0)
                ],
                color: Colors.white,
              ),
              child: ListView(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Text(
                        "Start to enjoy training your skills !",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontSize: 28.0,
                            fontFamily: 'RobotoMedium',
                            color: Colors.indigo[800],
                            fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      Text(
                        'With us, improve your skills with scheduled exercises !',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontSize: 15.0,
                            fontFamily: 'RobotoRegular',
                            color: Colors.indigo[300]),
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      Image.asset('assets/images/welcome.png'),
                      SizedBox(
                        height: 30.0,
                      ),
                      Container(
                        width: 300.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50.0),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.6),
                                offset: Offset(0.0, 3.0),
                                blurRadius: 1.0)
                          ],
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(50.0),
                          child: FlatButton(
                              padding: EdgeInsets.symmetric(
                                  vertical: 15.0, horizontal: 20.0),
                              color: Colors.indigo[800],
                              onPressed: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return LoginScreen();
                                }));
                              },
                              child: Text(
                                "LOGIN",
                                style: TextStyle(
                                    fontFamily: 'RobotoMedium',
                                    fontSize: 16.0,
                                    color: Colors.white),
                              )),
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Container(
                        width: 300.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50.0),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.6),
                                offset: Offset(0.0, 3.0),
                                blurRadius: 1.0)
                          ],
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(50.0),
                          child: FlatButton(
                              padding: EdgeInsets.symmetric(
                                  vertical: 15.0, horizontal: 20.0),
                              color: Colors.indigo[100],
                              onPressed: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return LoginScreen();
                                }));
                              },
                              child: Text(
                                "SIGNUP",
                                style: TextStyle(
                                    fontFamily: 'RobotoMedium',
                                    fontSize: 16.0,
                                    color: Colors.indigo[800]),
                              )),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
