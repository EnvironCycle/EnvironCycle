import 'package:flutter/material.dart';
import 'package:environcycle_prototype/ExtraUtility/CornerIcon.dart';
import 'package:geolocator/geolocator.dart';

class Tutong extends StatefulWidget {
  @override
  _TutongState createState() => _TutongState();
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
    
class _TutongState extends State<Tutong> {

  Position _currentUserPosition;
  double distanceInMeters1 = 0.0;
  Future<double> _distanceConfirmed;

  Future<double> getTheDistance1() async {
    _currentUserPosition = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);

   double distanceInMeters1 = Geolocator.distanceBetween(
    4.789869089375149,
     114.64782522471045,
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
    4.8616278109939, 
    114.85685755540122,
    _currentUserPosition2.latitude,
    _currentUserPosition2.longitude,
    );
    double distanceInKilometers2 = distanceInMeters2 / 1000;
          double roundDistanceInKM2 = double.parse((distanceInKilometers2).toStringAsFixed(2));
          return roundDistanceInKM2;
}

  @override
  void initState() {
    super.initState();
    _distanceConfirmed = getTheDistance1();
    _distanceConfirmed2 = getTheDistance2();
  }

 

  @override
  Widget build(BuildContext context) {
      return FutureBuilder(
      future: Future.wait([getTheDistance1(),getTheDistance2()
      ]),
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
                          'TUTONG',
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
              SizedBox(height: 15),
              Column(
                children: [
                  Card(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                    child: GestureDetector(
                onTap: () {
                    Navigator.pushNamed(context, '/RL8');
                },
                child: Container(
                    height: 95,
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
                      'EnEvo Sdn Bhd',
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
              Text(
                'Accepted materials: ',
              style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.normal,
                    color: Colors.black,
                      ),
                      ),
              ],
            ),
            SizedBox(height:1),
            Row(
              children: [
                SizedBox(width:20),
                      ImageIcon(
                        AssetImage('assets/paper.png'),
                      ),
                      Text(
                        '(White Printing Paper)',
                      style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.normal,
                    color: Colors.black,
                      ),
                      ),
              
              ]
              ),
              SizedBox(height:2),
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
              SizedBox(height: 15),
              Column(
                children: [
                  Card(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                    child: GestureDetector(
                onTap: () {
                    Navigator.pushNamed(context, '/RL2');
                },
                child: Container(
                    height: 120,
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
                      'Syarikat Perindustrian Dan...',
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
              Text(
                'Accepted materials: ',
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
                            AssetImage('assets/Battery.png'),
                            color: Colors.grey,
                          ),
                      Text(
                        '(Used Motorcar Battery),',
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
                          SizedBox(width:20),
                      ImageIcon(
                        AssetImage('assets/metal.png'),
                      ),
                      Text(
                        '(Scrap Metals)',
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
          ],
        ),
        );
         }
    );
}
}


//tutong recycling locations