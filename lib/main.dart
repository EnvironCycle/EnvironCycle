import 'package:flutter/material.dart';
import 'package:environcycle_prototype/pages/loading.dart';
import 'package:environcycle_prototype/pages/home.dart';
import 'package:environcycle_prototype/pages/map.dart';
import 'package:environcycle_prototype/pages/events.dart';
import 'package:environcycle_prototype/pages/InfoLong.dart';
import 'package:environcycle_prototype/pages/Info.dart';
import 'package:environcycle_prototype/pages/InfoShort.dart';
import 'package:environcycle_prototype/pages/article.dart';
import 'package:environcycle_prototype/pages/about_us.dart';
import 'package:environcycle_prototype/pages/first_screen.dart';
import 'package:environcycle_prototype/pages/cov.dart';
import 'package:environcycle_prototype/pages/redeem.dart';
import 'package:environcycle_prototype/pages/vouchers.dart';
import 'package:environcycle_prototype/Redeem/Re1.dart';
import 'package:environcycle_prototype/Redeem/Re2.dart';
import 'package:environcycle_prototype/pages/find.dart';
import 'package:environcycle_prototype/pages/find2.dart';
import 'package:environcycle_prototype/RL/RL1.dart';
import 'package:environcycle_prototype/RL/RL2.dart';
import 'package:environcycle_prototype/RL/RL3.dart';
import 'package:environcycle_prototype/RL/RL4.dart';
import 'package:environcycle_prototype/RL/RL5.dart';
import 'package:environcycle_prototype/RL/RL6.dart';
import 'package:environcycle_prototype/RL/RL7.dart';
import 'package:environcycle_prototype/RL/RL8.dart';
import 'package:environcycle_prototype/RL/RL9.dart';



void main() => runApp(MaterialApp( //Material App is basically the main widget (Father Widget)
    initialRoute: '/first_screen',
  routes: {
      '/': (context) => LoadingScreen(),
    '/first_screen': (context) => EnvironCycle(),
    '/article': (context) => Article(),
    '/events': (context) => Events(),
    '/home': (context) => Home(),
    '/map': (context) => Map(),
    '/au': (context) => about_us(),
    '/infolong': (context) => InfoLong(),
    '/RL1': (context) => RL1(),
    '/RL2': (context) => RL2(),
    '/RL3': (context) => RL3(),
    '/RL4': (context) => RL4(),
    '/RL5': (context) => RL5(),
    '/RL6': (context) => RL6(),
    '/RL7': (context) => RL7(),
    '/RL8': (context) => RL8(),
    '/RL9': (context) => RL9(),
    '/redeem': (context) => Redeem(),
    '/vouchers': (context) => Vouchers(),
    '/re1': (context) => Re1(),
    '/cov': (context) => cov(),
    '/cbtl': (context) => Find(),
    '/re2': (context) => Re2(),
    '/gc': (context) => Find2(),
    '/info': (context) => Info(),
    '/infoshort': (context) => InfoShort(),





  },
  ));




//Image.asset("assets/IconTransparent.png"),



