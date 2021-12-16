import 'package:flutter/material.dart';
import 'package:environcycle_prototype/ExtraUtility/CornerIcon.dart';
import 'package:geolocator/geolocator.dart';

class Belait extends StatefulWidget {
  @override
  _BelaitState createState() => _BelaitState();
}

Future<Position> determinePosition() async {
  bool serviceEnabled;
  LocationPermission permission;


  serviceEnabled = await Geolocator.isLocationServiceEnabled();
  if (!serviceEnabled) {
    return Future.error('Location services are disabled.');
  }

  permission = await Geolocator.checkPermission();
  if (permission == LocationPermission.denied) {
    permission = await Geolocator.requestPermission();
    if (permission == LocationPermission.denied) {
      return Future.error('Location permissions are denied');
    }
  }
  
  if (permission == LocationPermission.deniedForever) {
    return Future.error(
      'Location permissions are permanently denied, we cannot request permissions.');
  } 
  return await Geolocator.getCurrentPosition();
  
}
    
class _BelaitState extends State<Belait> {

  Position _currentUserPosition;
  double distanceInMeters1 = 0.0;
  Future<double> _distanceConfirmed;

  Future<double> getTheDistance1() async {
    _currentUserPosition = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);

   double distanceInMeters1 = Geolocator.distanceBetween(
    4.708399148078031,
    114.54223196787811,
    _currentUserPosition.latitude,
    _currentUserPosition.longitude,
    );
    double distanceInKilometers1 = distanceInMeters1 / 1000;
    double roundDistanceInKM1 = double.parse((distanceInKilometers1).toStringAsFixed(2));
    return roundDistanceInKM1;   
}
  Position _currentUserPosition2;
  double distanceInMeters2 = 0.0;
  Future<double> _distanceConfirmed2;

  Future<double> getTheDistance2() async {
    _currentUserPosition2 = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);

   double distanceInMeters2 = Geolocator.distanceBetween(
    4.588506379102706, 
    114.18521820497115,
    _currentUserPosition2.latitude,
    _currentUserPosition2.longitude,
    );
    double distanceInKilometers2 = distanceInMeters2 / 1000;
    double roundDistanceInKM2 = double.parse((distanceInKilometers2).toStringAsFixed(2));
    return roundDistanceInKM2;   
}
    Position _currentUserPosition3;
    double distanceInMeters3 = 0.0;
    Future<double> _distanceConfirmed3;

        Future<double> getTheDistance3() async {
          _currentUserPosition3 = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);

        double distanceInMeters3 = Geolocator.distanceBetween(
          4.583489703609278, 
          114.20615889587347,
          _currentUserPosition3.latitude,
          _currentUserPosition3.longitude,
          );
          double distanceInKilometers3 = distanceInMeters3 / 1000;
          double roundDistanceInKM3 = double.parse((distanceInKilometers3).toStringAsFixed(2));
          return roundDistanceInKM3;   
}

  @override
  void initState() {
    super.initState();
    _distanceConfirmed = getTheDistance1();
    _distanceConfirmed2 = getTheDistance2();
    _distanceConfirmed3 = getTheDistance3();
  }

 

  @override
  Widget build(BuildContext context) {
      return FutureBuilder(
      future: Future.wait([getTheDistance1(),getTheDistance2(), getTheDistance3()]),
      builder:(context, snapshot) 
      {
    return Scaffold(
      backgroundColor: Colors.green[50],
    body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height:30),
            Row(
                children: [
                  SizedBox(width:10),
                  GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: CornerIcon(
                              height: 50,
                              width: 50,
                              child: Icon(
                                Icons.keyboard_backspace, 
                                color: Color.fromRGBO(48, 47, 48, 1.0), // Custom Black Colour
                              ),
                            ),
                          ),
                          SizedBox(width:35),
                        Text(
                          'BELAIT',
                           style: TextStyle(
                             fontFamily: "Josefin",
                             letterSpacing: 1,
                             color: Color.fromRGBO(48, 47, 48, 1.0),
                             fontWeight: FontWeight.w700, 
                             fontSize: 22
                          ),
                          ),
                ]
              ),

              // Title & Back Button

              SizedBox(height: 15),
              Column(
                children: [
                  Card(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                    child: GestureDetector(
                onTap: () {
                    Navigator.pushNamed(context, '/RL6');
                },
                child: Container(
                    height: 90,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15.0)
                    ),
                    child: Column(
                      children: [
                        SizedBox(height:3),
                        Row(
                        children: [
                          SizedBox(width:20),
                          ImageIcon(
                            AssetImage('assets/recycling_logo.png'),
                            color: Colors.green,
                ),
                SizedBox(width: 10),
                Text(
                      'Seri HK Recycling Company',
                      style: TextStyle(
                        fontSize: 22.0,
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                      ),
                ),
                        ],
            ),
            Row(
              children: <Widget> [
                SizedBox(width: 20),
              Text('Accepted materials: ',
              style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.normal,
                    color: Colors.black,
                      ),
                      ),
                      ]
              ),
                      Row(
                        children: [
                          SizedBox(width:20),
                          ImageIcon(
                            AssetImage('assets/metal.png'),
                          ),
                      Text(
                        '(Scrap Metal)',
                      style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.normal,
                    color: Colors.black,
                    ),
                   ),
                 ],
                ),
              
              
              Row(
                children: [
                  SizedBox(width: 20),
                  if (snapshot.hasData)
                  Text('${snapshot.data[0]} Kilometers Away' ,
                   ),
                ],
              ),
                      ],
                    ),

                    
                ),
                ),
                  ),
                ]
              ),

              // First Location in Belait
               
              SizedBox(height: 15),
              Column(
                children: [
                  Card(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                    child: GestureDetector(
                onTap: () {
                    Navigator.pushNamed(context, '/RL4');
                },
                child: Container(
                    height: 90,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15.0)
                    ),
                    child: Column(
                      children: [
                        SizedBox(height:3),
                        Row(
                        children: [
                          SizedBox(width:20),
                          ImageIcon(
                            AssetImage('assets/recycling_logo.png'),
                            color: Colors.green,
                ),
                SizedBox(width: 10),
                Text(
                      'CIC Environmental Services',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                      ),
                ),
                        ],
            ),
            Row(
              children: <Widget> [
                SizedBox(width: 20),
              Text('Accepted materials: ',
              style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.normal,
                    color: Colors.black,
                      ),
                      ),
              ],
              ),
              Row(
                children: [
                  SizedBox(width:20),
                  ImageIcon(
                    AssetImage('assets/oil.png'),
                        color: Colors.yellow[800],
                      ),
                      Text(
                        '(Used Oil)',
                      style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.normal,
                    color: Colors.black,
                      ),
                      ),
              
              ]
              ),
              Row(
                children: [
                  SizedBox(width: 20),
                  if (snapshot.hasData)
                  Text('${snapshot.data[1]} Kilometers Away' ,
                   ),
                ],
              ),
                      ],
                    ),

                    
                ),
                ),
                  ),
                ]
              ),

              // Second Belait Recycling Location

              SizedBox(height: 15),
              Column(
                children: [
                  Card(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                    child: GestureDetector(
                onTap: () {
                    Navigator.pushNamed(context, '/RL10');
                },
                child: Container(
                    height: 150,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15.0)
                    ),
                    child: Column(
                      children: [
                        SizedBox(height:3),
                        Row(
                        children: [
                          SizedBox(width:20),
                          ImageIcon(
                            AssetImage('assets/recycling_logo.png'),
                            color: Colors.green,
                ),
                SizedBox(width: 10),
                Text(
                      'Tzu Chi Recycle',
                      style: TextStyle(
                        fontSize: 22.0,
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                      ),
                ),
                        ],
            ),
            Row(
              children: <Widget> [
                SizedBox(width: 20),
              Text('Accepted materials: ',
              style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.normal,
                    color: Colors.black,
                      ),
                      ),
                      ]
              ),
                      Row(
                        children: [
                          SizedBox(width:20),
                          ImageIcon(
                            AssetImage('assets/cans.png'),
                            color: Colors.red,
                          ),
                      Text(
                        '(Aluminium)',
                      style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.normal,
                    color: Colors.black,
                    ),
                   ),
                 ],
                ),
                SizedBox(height: 2),
                Row(
                        children: [
                          SizedBox(width:20),
                          ImageIcon(
                            AssetImage('assets/paper.png'),
                          ),
                      Text(
                        '(Paper)',
                      style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.normal,
                    color: Colors.black,
                    ),
                   ),
                 ],
                ),
                SizedBox(height: 2),
                Row(
                        children: [
                          SizedBox(width:20),
                          ImageIcon(
                            AssetImage('assets/plastic.png'),
                            color: Colors.blue,
                          ),
                      Text(
                        '(Plastic)',
                      style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.normal,
                    color: Colors.black,
                    ),
                   ),
                 ],
                ),
              
              
              Row(
                children: [
                  SizedBox(width: 20),
                  if (snapshot.hasData)
                  Text('${snapshot.data[2]} Kilometers Away' ,
                   ),
                ],
              ),
                      ],
                    ),
                ),
                ),
                  ),
                ]
              ),

          // Third Belait Recycling Location

          ],
        ),
        );
         }
    );
}
}
