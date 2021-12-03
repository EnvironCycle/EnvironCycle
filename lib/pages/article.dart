import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class Article extends StatefulWidget {
  @override
  _ArticleState createState() => _ArticleState();
}

class _ArticleState extends State<Article> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff81c684),
        title: Text(
          'Articles on Recycling',
        style: TextStyle(
          fontFamily: 'SourceSansPro',
          fontSize: 25.0,
        ),
        ),
        centerTitle: true,

      ),
        body: Container(
          child: ListView(
            padding: const EdgeInsets.all(16.0),
            children: [
              GestureDetector(
                onTap: _launchURL4,
                child: Container(
                  width: double.infinity,
                  height: 260,
                  child: Card(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            width: double.infinity,
                            height: 160,
                            child: Image(image: AssetImage('assets/news4.jpg'))
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Center(
                                child: Text(
                                  'Brunei’s first mass produced toilet tissue,',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Center(
                          child: Text(
                            'made 100% from recycled paper',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Divider(
                          height: 1,
                          thickness: 1,
                        ),
                        Center(
                            child: Text(
                              'Date: August 19, 2020',
                            )
                        ),
                        Divider(
                          height: 1,
                          thickness: 1,
                        ),
                        Expanded(
                          child: Text(
                            '    When Syidah Kariya and Tan Thiam Kui crossed paths in 2014 as colleagues in a consulting firm, they were aspiring professionals in their 20s in search of a greater calling beyond the nine-to-five.',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: _launchURL,
                child: Container(
                  width: double.infinity,
                  height: 260,
                  child: Card(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                              Container(
                                  width: double.infinity,
                                  height: 160,
                                  child: Image(image: AssetImage('assets/news1.jpg'))
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                            Expanded(
                              child: Center(
                                child: Text(
                                  'Recycling drive to reduce waste',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                            ),
                              ),
                          ),
                            ],
                      ),
                          Divider(
                           height: 1,
                            thickness: 1,
                          ),
                          Center(
                              child: Text(
                                'Date: February 8,2021',
                              )
                          ),
                          Divider(
                            height: 1,
                            thickness: 1,
                          ),
                          Expanded(
                            child: Text(
                              ' Green Depot will conduct its seventh recycling drive at the Kuala Belait (KB) Sentral Shopping Centre on February 14 from 1pm to 4pm. The event is aimed...',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
          ],
    ),
    ),
    ),
    ),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: _launchURL4,
                child: Container(
                  width: double.infinity,
                  height: 260,
                  child: Card(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            width: double.infinity,
                            height: 160,
                            child: Image(image: AssetImage('assets/news5.jpg'))
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Center(
                                child: Text(
                                  'No time to waste',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Divider(
                          height: 1,
                          thickness: 1,
                        ),
                        Center(
                            child: Text(
                              'Date: February 8, 2021',
                            )
                        ),
                        Divider(
                          height: 1,
                          thickness: 1,
                        ),
                        Expanded(
                          child: Text(
                            '    In 2019, over 297,218 metric tonnes (MT) of waste was generated in Brunei Darussalam, of which only 11.3 per cent was recycled. The remainder mainly ended up in landfills.',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: _launchURL3,
                child: Container(
                  width: double.infinity,
                  height: 260,
                  child: Card(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            width: double.infinity,
                            height: 160,
                            child: Image(image: AssetImage('assets/news3.jpg'))
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Center(
                                child: Text(
                                  'Report estimates drop in plastic recycled',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Center(
                          child: Text(
                            'in 2019',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Divider(
                          height: 1,
                          thickness: 1,
                        ),
                        Center(
                            child: Text(
                              'Date: June 23, 2021',
                            )
                        ),
                        Divider(
                          height: 1,
                          thickness: 1,
                        ),
                        Expanded(
                          child: Text(
                            '    Slightly less scrap plastic from the U.S. was recycled in 2019 than the year prior. The data...',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: _launchURL2,
                child: Container(
                  width: double.infinity,
                  height: 260,
                  child: Card(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            width: double.infinity,
                            height: 160,
                            child: Image(image: AssetImage('assets/news2.jpg'))
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Center(
                                child: Text(
                                'International Recycling Week',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              ),
                            ),
                          ],
                        ),
                        Divider(
                          height: 1,
                          thickness: 1,
                        ),
                        Center(
                            child: Text(
                              'Date: June 24, 2021',
                            )
                        ),
                        Divider(
                          height: 1,
                          thickness: 1,
                        ),
                        Expanded(
                          child: Text(
                            ' Global inflationary pressures are in place, said panelists at a ferrous scrap roundtable session at the late June International Recycling Week online...',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                  height:10
              ),
        ],


    ),

        ),
    );
  }
}

_launchURL() async {
  const url = 'https://borneobulletin.com.bn/recycling-drive-to-reduce-waste/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchURL2() async {
  const url = 'https://www.recyclingtoday.com/article/irw-ferrous-scrap-recycling-shipping-2021-steel-demand/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchURL3() async {
  const url = 'https://resource-recycling.com/recycling/2021/06/22/report-estimates-drop-in-plastic-recycled-in-2019/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchURL4() async {
  const url = 'https://resource-recycling.com/recycling/2021/06/22/report-estimates-drop-in-plastic-recycled-in-2019/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

