import 'package:flutter/material.dart';
import 'package:submission_alif/home_screen.dart';

class LoginScreen extends StatelessWidget {
  final nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: <Widget>[
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: <Color>[Colors.indigo[300], Colors.indigo])),
          ),
        ListView(
            scrollDirection: Axis.vertical,
            children: <Widget>[
              Container(
                padding: EdgeInsets.symmetric(vertical: 25.0, horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Sing in to Your Account",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.white,
                        fontFamily: 'RobotoThin',
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    Image.asset('assets/images/login.png'),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      width: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.indigo[200],
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              offset: Offset(0.0, 3.0),
                              blurRadius: 1.0)
                        ],
                      ),
                      child: TextField(
                        controller: nameController,
                        decoration: InputDecoration(
                          icon: Icon(
                            Icons.person,
                            color: Colors.indigo[800],
                          ),
                          hintText: "Username",
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      width: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.indigo[200],
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              offset: Offset(0.0, 3.0),
                              blurRadius: 1.0)
                        ],
                      ),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          icon: Icon(
                            Icons.lock,
                            color: Colors.indigo[800],
                          ),
                          hintText: "Password",
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      width: 300,
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
                        borderRadius: BorderRadius.circular(50),
                        child: RaisedButton(
                            padding: EdgeInsets.symmetric(
                                vertical: 15, horizontal: 20),
                            color: Colors.indigo[800],
                            onPressed: () {
                              var username = nameController.text;
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return HomeScreen(guestname: username);
                              }));
                            },
                            child: Text(
                              "LOGIN",
                              style: TextStyle(
                                  fontFamily: 'RobotoMedium',
                                  fontSize: 16,
                                  color: Colors.white),
                            )),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
      ],
    ));
  }
}
