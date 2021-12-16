import 'package:environcycle_prototype/pages/Floc.dart';
import 'package:environcycle_prototype/pages/RLSelect.dart';
import 'package:environcycle_prototype/pages/TutongRL.dart';
import 'package:environcycle_prototype/pages/BSBRL.dart';
import 'package:environcycle_prototype/pages/BelaitRL.dart';
import 'package:environcycle_prototype/pages/facts.dart';
import 'package:environcycle_prototype/pages/menu.dart';
import 'package:flutter/material.dart';
import 'package:environcycle_prototype/pages/map.dart';
import 'package:environcycle_prototype/pages/events.dart';
import 'package:environcycle_prototype/pages/InfoLong.dart';
import 'package:environcycle_prototype/pages/Info.dart';
import 'package:environcycle_prototype/pages/InfoShort.dart';
import 'package:environcycle_prototype/pages/article.dart';
import 'package:environcycle_prototype/pages/about_us.dart';
import 'package:environcycle_prototype/InProgress/cov.dart';
import 'package:environcycle_prototype/InProgress/redeem.dart';
import 'package:environcycle_prototype/InProgress/vouchers.dart';
import 'package:environcycle_prototype/InProgress/Re1.dart';
import 'package:environcycle_prototype/InProgress/Re2.dart';
import 'package:environcycle_prototype/InProgress/find.dart';
import 'package:environcycle_prototype/InProgress/find2.dart';
import 'package:environcycle_prototype/RL/RL1.dart';
import 'package:environcycle_prototype/RL/RL2.dart';
import 'package:environcycle_prototype/RL/RL3.dart';
import 'package:environcycle_prototype/RL/RL4.dart';
import 'package:environcycle_prototype/RL/RL5.dart';
import 'package:environcycle_prototype/RL/RL6.dart';
import 'package:environcycle_prototype/RL/RL7.dart';
import 'package:environcycle_prototype/RL/RL8.dart';
import 'package:environcycle_prototype/RL/RL9.dart';
import 'package:environcycle_prototype/RL/RL10.dart';
import 'package:environcycle_prototype/News/news1.dart';
import 'package:environcycle_prototype/News/news2.dart';
import 'package:environcycle_prototype/News/news3.dart';
import 'package:environcycle_prototype/News/news4.dart';
import 'package:environcycle_prototype/News/news5.dart';
import 'package:environcycle_prototype/News/news6.dart';
import 'package:environcycle_prototype/News/news7.dart';
import 'package:environcycle_prototype/News/news8.dart';
import 'package:environcycle_prototype/News/news9.dart';



void main() => runApp(MaterialApp( //Material App is basically the main widget (Father Widget)
    initialRoute: '/menu',
  routes: {
    '/article': (context) => Article(),
    '/events': (context) => Events(),
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
    '/RL10': (context) => RL10(),
    '/redeem': (context) => Redeem(),
    '/vouchers': (context) => Vouchers(),
    '/re1': (context) => Re1(),
    '/cov': (context) => cov(),
    '/cbtl': (context) => Find(),
    '/re2': (context) => Re2(),
    '/gc': (context) => Find2(),
    '/info': (context) => Info(),
    '/infoshort': (context) => InfoShort(),
    '/menu': (context) => Menu(),
    '/N1': (context) => News1(),
    '/N2': (context) => News2(),
    '/N3': (context) => News3(),
    '/N4': (context) => News4(),
    '/N5': (context) => News5(),
    '/N6': (context) => News6(),
    '/N7': (context) => News7(),
    '/N8': (context) => News8(),
    '/N9': (context) => News9(),
    '/Belait': (context) => Belait(),
    '/BSB': (context) => BSB(),
    '/Tutong': (context) => Tutong(),
    '/facts': (context) => Facts(),
    '/floc': (context) => Floc(),
    '/rlselect': (context) => RLSelect(),







  },
  ));



