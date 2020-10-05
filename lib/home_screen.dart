import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final guestname;
  HomeScreen({@required this.guestname});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Stack(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: 300.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: const Radius.circular(40.0),
                    bottomRight: const Radius.circular(40.0)),
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: <Color>[
                      Colors.lightBlue,
                      Colors.blue[700],
                      Colors.indigo[600]
                    ])),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(left: 16.0, top: 30.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50.0),
                  child: Image.asset(
                    "assets/images/profile.jpg",
                    width: 45.0,
                    height: 45.0,
                    fit: BoxFit.cover,
                  ),
                ),
                decoration: BoxDecoration(
                    color: Colors.blue,
                    border: Border.all(color: Colors.white, width: 3.0),
                    shape: BoxShape.circle),
              ),
              Container(
                margin: EdgeInsets.only(left: 10.0, top: 30.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Welcome back, $guestname",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 18.0,
                          fontFamily: 'RobotoMedium',
                          color: Colors.white),
                    ),
                    Text(
                      "Enjoy training and keep spirit in everyday",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 11.0,
                          fontFamily: 'RobotoMedium',
                          color: Colors.white70),
                    )
                  ],
                ),
              )
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 130.0, left: 25.0, right: 25.0),
                child: Container(
                  width: double.infinity,
                  height: 350.0,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20.0),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            offset: Offset(0.0, 3.0),
                            blurRadius: 15.0)
                      ]),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(20),
                        child: AddPoint(),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 20.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(50.0),
                                  child: Image.asset(
                                    "assets/images/situp.jpg",
                                    width: 55.0,
                                    height: 55.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.black.withOpacity(0.2),
                                          offset: Offset(0.0, 3.0),
                                          blurRadius: 1.0)
                                    ]),
                              ),
                              SizedBox(
                                height: 8.0,
                              ),
                              Text(
                                "Sit Up",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 15.0,
                                  fontFamily: 'RobotoRegular',
                                ),
                              )
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 20.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(50.0),
                                  child: Image.asset(
                                    "assets/images/pushup.jpg",
                                    width: 55.0,
                                    height: 55.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.black.withOpacity(0.2),
                                          offset: Offset(0.0, 3.0),
                                          blurRadius: 1.0)
                                    ]),
                              ),
                              SizedBox(
                                height: 8.0,
                              ),
                              Text(
                                "Push Up",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 15.0,
                                  fontFamily: 'RobotoRegular',
                                ),
                              )
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 20.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(50.0),
                                  child: IconButton(
                                      icon: Icon(Icons.more_horiz),
                                      color: Colors.indigo,
                                      iconSize: 40.0,
                                      onPressed: () {}),
                                ),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle,
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.black.withOpacity(0.1),
                                          offset: Offset(0.0, 3.0),
                                          blurRadius: 1.0)
                                    ]),
                              ),
                              SizedBox(
                                height: 8.0,
                              ),
                              Text(
                                "More",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 15.0,
                                  fontFamily: 'RobotoRegular',
                                ),
                              )
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 25.0, horizontal: 25.0),
                child: Text(
                  "Up to Date",
                  style: TextStyle(
                    fontSize: 16.0,
                    fontFamily: 'RobotoMedium',
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 30.0),
                child: Container(
                  height: 120.0,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(
                          left: 25.0,
                        ),
                        width: 170.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  offset: Offset(0.0, 3.0),
                                  blurRadius: 15.0)
                            ],
                            gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: <Color>[
                                  Colors.lightBlue[700],
                                  Colors.blue[800]
                                ])),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10.0),
                        width: 170.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  offset: Offset(0.0, 3.0),
                                  blurRadius: 15.0)
                            ],
                            gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: <Color>[
                                  Colors.indigo,
                                  Colors.deepPurpleAccent
                                ])),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10.0, right: 25.0),
                        width: 170.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  offset: Offset(0.0, 3.0),
                                  blurRadius: 15.0)
                            ],
                            gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: <Color>[
                                  Colors.orange,
                                  Colors.deepOrangeAccent
                                ])),
                      )
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      )),
    );
  }
}

class AddPoint extends StatefulWidget {
  @override
  _AddPointState createState() => _AddPointState();
}

class _AddPointState extends State<AddPoint> {
  int points = 20;

  void addPoints() {
    setState(() {
      points = points + 15;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Text(
            "Your Points",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 17.0,
              fontFamily: 'RobotoMedium',
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Text(
                points.toString(),
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontSize: 60.0,
                    fontFamily: 'RobotoBold',
                    color: Colors.indigo[800]),
              ),
              Text("Points",
                  textAlign: TextAlign.end,
                  style: TextStyle(
                      fontSize: 12.0,
                      fontFamily: 'RobotoRegular',
                      fontWeight: FontWeight.w700))
            ],
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 30.0),
            width: 175.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(0.6),
                    offset: Offset(0.0, 3.0),
                    blurRadius: 10.0)
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: RaisedButton(
                  padding:
                      EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
                  color: Colors.indigo[800],
                  onPressed: addPoints,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Icon(
                        Icons.add_to_photos,
                        color: Colors.white,
                      ),
                      Text(
                        "ADD POINTS",
                        style: TextStyle(
                            fontFamily: 'RobotoMedium',
                            fontSize: 16.0,
                            color: Colors.white),
                      )
                    ],
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
