import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';

// ignore: todo
// TODO, SORT ARTICLES BASED ON DATE (RECENTLY)


class Article extends StatefulWidget {
  @override
  _ArticleState createState() => _ArticleState();
}

class _ArticleState extends State<Article> {
  bool isLiked = false;
  bool isLiked2 = false;
  bool isLiked3 = false;
  bool isLiked4 = false;
  bool isLiked5 = false;
  bool isLiked6 = false;
  bool isLiked7 = false;
  bool isLiked8 = false;
  bool isLiked9 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[50],
        body: CustomScrollView(
          slivers:[
            SliverAppBar(
              floating: true,
              title: Text(
          'RECYCLING NEWS',
              style: TextStyle(
              fontFamily: "Josefin",
              color: Colors.white,
              fontWeight: FontWeight.w700, 
              fontSize: 22
          ),
        ),
        centerTitle: true,
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
            // All comments are used for navigation purpose
            // A slivering app bar
            // note to users: all of the buttons (including the heart emoji) are clickable :D

            GestureDetector(
              onTap: () {
                  Navigator.pushNamed(context, '/N1');
                  },
              child: Container(
              margin: const EdgeInsets.symmetric(vertical:10),
              child: Padding(
                padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                child: Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),
                  child: Column(
                        children: [
                          Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(25.0),
                                child: Image.asset('assets/CoverImage1.jpeg')),
                              Positioned(
                                top: 15,
                                right: 15,
                                child: Container(
                                  width:50,
                                  height:50,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                                    border: Border.all(color: Color.fromRGBO(141, 141, 141, 1.0).withAlpha(40)),
                                  ),
                                  child: Center(
                                    child: LikeButton(
                                      size: 25,
                                      isLiked: isLiked,
                                      likeBuilder: (isLiked) {
                                        final color = isLiked ? Colors.red : Colors.grey;
                                        return Icon(Icons.favorite, color:color, size:25);
                                      },
                                      onTap: (isLiked) async {
                                        this.isLiked = !isLiked;
                                        return !isLiked;
                                      }
                                    ),
                                  ),
                              ), 
                              ),
                            ],
                          ),
                          SizedBox(height:5),
                          Column(
                            children: [
                              Center(
                                child: Text(
                                  ' From the field: "Climate-Smart"',
                                style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                      ),
                                            ),
                              ),
                              Center(
                                  child: Text(
                                    'development in an uncertain world',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Divider(height:10),
                              Center(
                                  child: Text(
                                    '4th December 2021',
                                    style: TextStyle(
                                      color: Color.fromRGBO(141, 141, 141, 1.0), //Special Grey Colour
                                      fontSize: 16, 
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                            ],
                          ),
                        ],
                      ),
                ),
          ),
    ),
            ),

    // News 1

     GestureDetector(
       onTap: () {
                  Navigator.pushNamed(context, '/N2');
                  },
       child: Container(
              margin: const EdgeInsets.symmetric(vertical:10),
              child: Padding(
                padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                child: Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),
                  child: Column(
                        children: [
                          Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(25.0),
                                child: Image.asset('assets/CoverImage2.jpeg')),
                              Positioned(
                                top: 15,
                                right: 15,
                                child: Container(
                                  width:50,
                                  height:50,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                                    border: Border.all(color: Color.fromRGBO(141, 141, 141, 1.0).withAlpha(40)),
                                  ),
                                  child: Center(
                                    child: LikeButton(
                                      size: 25,
                                      isLiked: isLiked,
                                      likeBuilder: (isLiked) {
                                        final color = isLiked ? Colors.red : Colors.grey;
                                        return Icon(Icons.favorite, color:color, size:25);
                                      },
                                      onTap: (isLiked) async {
                                        this.isLiked = !isLiked;
                                        return !isLiked;
                                      }
                                    ),
                                  ),
                              ), 
                              ), 
                            ],
                          ),
                          SizedBox(height:5),
                          Column(
                            children: [
                              Center(
                                child: Text(
                                  ' Rain to replace snow in the Arctic',
                                style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                      ),
                                            ),
                              ),
                              Center(
                                  child: Text(
                                    'as climate heats, study finds',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Divider(height:10),
                              Center(
                                  child: Text(
                                    '30th November 2021',
                                    style: TextStyle(
                                      color: Color.fromRGBO(141, 141, 141, 1.0), 
                                      fontSize: 16, 
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                            ],
                          ),
                        ],
                      ),
                ),
            ),
    ),
     ),

    // News 2

    GestureDetector(
      onTap: () {
                  Navigator.pushNamed(context, '/N3');
                  },
      child: Container(
              margin: const EdgeInsets.symmetric(vertical:10),
              child: Padding(
                padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                child: Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),
                  child: Column(
                        children: [
                          Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(25.0),
                                child: Image.asset('assets/CoverImage3.jpeg')),
                              Positioned(
                                top: 15,
                                right: 15,
                                child: Container(
                                  width:50,
                                  height:50,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                                    border: Border.all(color: Color.fromRGBO(141, 141, 141, 1.0).withAlpha(40)),
                                  ),
                                  child: Center(
                                    child: LikeButton(
                                      size: 25,
                                      isLiked: isLiked,
                                      likeBuilder: (isLiked) {
                                        final color = isLiked ? Colors.red : Colors.grey;
                                        return Icon(Icons.favorite, color:color, size:25);
                                      },
                                      onTap: (isLiked) async {
                                        this.isLiked = !isLiked;
                                        return !isLiked;
                                      }
                                    ),
                                  ),
                              ), 
                              ), 
                            ],
                          ),
                          SizedBox(height:5),
                          Column(
                            children: [
                              Center(
                                child: Text(
                                  ' The environmental impact of',
                                style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                      ),
                                            ),
                              ),
                              Center(
                                  child: Text(
                                    'disposable diapers',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Divider(height:10),
                              Center(
                                  child: Text(
                                    '5th December 2021',
                                    style: TextStyle(
                                      color: Color.fromRGBO(141, 141, 141, 1.0), 
                                      fontSize: 16, 
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                            ],
                          ),
                        ],
                      ),
                ),
            ),
      ),
    ),

    // News 3
    
    GestureDetector(
      onTap: () {
                  Navigator.pushNamed(context, '/N4');
                  },
      child: Container(
              margin: const EdgeInsets.symmetric(vertical:10),
              child: Padding(
                padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                child: Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),
                  child: Column(
                        children: [
                          Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(25.0),
                                child: Image.asset('assets/CoverImage4.jpg')),
                              Positioned(
                                top: 15,
                                right: 15,
                                child: Container(
                                  width:50,
                                  height:50,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                                    border: Border.all(color: Color.fromRGBO(141, 141, 141, 1.0).withAlpha(40)),
                                  ),
                                  child: Center(
                                    child: LikeButton(
                                      size: 25,
                                      isLiked: isLiked,
                                      likeBuilder: (isLiked) {
                                        final color = isLiked ? Colors.red : Colors.grey;
                                        return Icon(Icons.favorite, color:color, size:25);
                                      },
                                      onTap: (isLiked) async {
                                        this.isLiked = !isLiked;
                                        return !isLiked;
                                      }
                                    ),
                                  ),
                              ), 
                              ), 
                            ],
                          ),
                          SizedBox(height:5),
                          Column(
                            children: [
                              Center(
                                child: Text(
                                  ' Beach clean-up sees over',
                                style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                      ),
                                            ),
                              ),
                              Center(
                                  child: Text(
                                    '1,000kg of rubbish collected ',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Divider(height:10),
                              Center(
                                  child: Text(
                                    '12th July 2021',
                                    style: TextStyle(
                                      color: Color.fromRGBO(141, 141, 141, 1.0),  
                                      fontSize: 16, 
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                            ],
                          ),
                        ],
                      ),
                ),
            ),
      ),
    ),

    // News 4

    GestureDetector(
      onTap: () {
                  Navigator.pushNamed(context, '/N5');
                  },
      child: Container(
              margin: const EdgeInsets.symmetric(vertical:10),
              child: Padding(
                padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                child: Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),
                  child: Column(
                        children: [
                          Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(25.0),
                                child: Image.asset('assets/CoverImage5.JPG')),
                              Positioned(
                                top: 15,
                                right: 15,
                                child: Container(
                                  width:50,
                                  height:50,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                                    border: Border.all(color: Color.fromRGBO(141, 141, 141, 1.0).withAlpha(40)),
                                  ),
                                  child: Center(
                                    child: LikeButton(
                                      size: 25,
                                      isLiked: isLiked,
                                      likeBuilder: (isLiked) {
                                        final color = isLiked ? Colors.red : Colors.grey;
                                        return Icon(Icons.favorite, color:color, size:25);
                                      },
                                      onTap: (isLiked) async {
                                        this.isLiked = !isLiked;
                                        return !isLiked;
                                      }
                                    ),
                                  ),
                              ), 
                              ), 
                            ],
                          ),
                          SizedBox(height:5),
                          Column(
                            children: [
                              Center(
                                child: Text(
                                  ' Storm Arwen: A rare sea turtle and seal',
                                style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                      ),
                                            ),
                              ),
                              Center(
                                  child: Text(
                                    'pups have washed up on UK beaches',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Divider(height:10),
                              Center(
                                  child: Text(
                                    '4th December 2021',
                                    style: TextStyle(
                                      color: Color.fromRGBO(141, 141, 141, 1.0), 
                                      fontSize: 16, 
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                            ],
                          ),
                        ],
                      ),
                ),
            ),
      ),
    ),

    // News 5

    GestureDetector(
      onTap: () {
                  Navigator.pushNamed(context, '/N6');
                  },
      child: Container(
              margin: const EdgeInsets.symmetric(vertical:10),
              child: Padding(
                padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                child: Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),
                  child: Column(
                        children: [
                          Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(25.0),
                                child: Image.asset('assets/CoverImage6.jpeg')),
                              Positioned(
                                top: 15,
                                right: 15,
                                child: Container(
                                  width:50,
                                  height:50,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                                    border: Border.all(color: Color.fromRGBO(141, 141, 141, 1.0).withAlpha(40)),
                                  ),
                                  child: Center(
                                    child: LikeButton(
                                      size: 25,
                                      isLiked: isLiked,
                                      likeBuilder: (isLiked) {
                                        final color = isLiked ? Colors.red : Colors.grey;
                                        return Icon(Icons.favorite, color:color, size:25);
                                      },
                                      onTap: (isLiked) async {
                                        this.isLiked = !isLiked;
                                        return !isLiked;
                                      }
                                    ),
                                  ),
                              ), 
                              ), 
                            ],
                          ),
                          SizedBox(height:5),
                          Column(
                            children: [
                              Center(
                                child: Text(
                                  ' Environmental education tour',
                                style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                      ),
                                            ),
                              ),
                              Center(
                                  child: Text(
                                    'to Tenaga Suria Brunei',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Divider(height:10),
                              Center(
                                  child: Text(
                                    '12th November 2020',
                                    style: TextStyle(
                                      color: Color.fromRGBO(141, 141, 141, 1.0), 
                                      fontSize: 16, 
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                            ],
                          ),
                        ],
                      ),
                ),
            ),
      ),
    ),

    // News 6

    GestureDetector(
      onTap: () {
                  Navigator.pushNamed(context, '/N7');
                  },
      child: Container(
              margin: const EdgeInsets.symmetric(vertical:10),
              child: Padding(
                padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                child: Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),
                  child: Column(
                        children: [
                          Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(25.0),
                                child: Image.asset('assets/CoverImage7.jpg')),
                              Positioned(
                                top: 15,
                                right: 15,
                                child: Container(
                                  width:50,
                                  height:50,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                                    border: Border.all(color: Color.fromRGBO(141, 141, 141, 1.0).withAlpha(40)),
                                  ),
                                  child: Center(
                                    child: LikeButton(
                                      size: 25,
                                      isLiked: isLiked,
                                      likeBuilder: (isLiked) {
                                        final color = isLiked ? Colors.red : Colors.grey;
                                        return Icon(Icons.favorite, color:color, size:25);
                                      },
                                      onTap: (isLiked) async {
                                        this.isLiked = !isLiked;
                                        return !isLiked;
                                      }
                                    ),
                                  ),
                              ), 
                              ), 
                            ],
                          ),
                          SizedBox(height:5),
                          Column(
                            children: [
                              Center(
                                child: Text(
                                  ' 510 Sapling for Berakas',
                                style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                      ),
                                            ),
                              ),
                              Center(
                                  child: Text(
                                    'forest reserve',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Divider(height:10),
                              Center(
                                  child: Text(
                                    '2nd April 2021',
                                    style: TextStyle(
                                      color: Color.fromRGBO(141, 141, 141, 1.0),
                                      fontSize: 16, 
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                            ],
                          ),
                        ],
                      ),
                ),
            ),
      ),
    ),

    // News 7

    GestureDetector(
      onTap: () {
                  Navigator.pushNamed(context, '/N8');
                  },
      child: Container(
              margin: const EdgeInsets.symmetric(vertical:10),
              child: Padding(
                padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                child: Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),
                  child: Column(
                        children: [
                          Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(25.0),
                                child: Image.asset('assets/CoverImage8.jpg')),
                              Positioned(
                                top: 15,
                                right: 15,
                                child: Container(
                                  width:50,
                                  height:50,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                                    border: Border.all(color: Color.fromRGBO(141, 141, 141, 1.0).withAlpha(40)),
                                  ),
                                  child: Center(
                                    child: LikeButton(
                                      size: 25,
                                      isLiked: isLiked,
                                      likeBuilder: (isLiked) {
                                        final color = isLiked ? Colors.red : Colors.grey;
                                        return Icon(Icons.favorite, color:color, size:25);
                                      },
                                      onTap: (isLiked) async {
                                        this.isLiked = !isLiked;
                                        return !isLiked;
                                      }
                                    ),
                                  ),
                              ), 
                              ), 
                            ],
                          ),
                          SizedBox(height:5),
                          Column(
                            children: [
                              Center(
                                child: Text(
                                  ' Recycling drive to',
                                style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                      ),
                                            ),
                              ),
                              Center(
                                  child: Text(
                                    'reduce waste',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Divider(height:10),
                              Center(
                                  child: Text(
                                    '3rd February 2021',
                                    style: TextStyle(
                                      color: Color.fromRGBO(141, 141, 141, 1.0), 
                                      fontSize: 16, 
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                            ],
                          ),
                        ],
                      ),
                ),
            ),
      ),
    ),

    // News 8

    GestureDetector(
      onTap: () {
                  Navigator.pushNamed(context, '/N9');
                  },
      child: Container(
              margin: const EdgeInsets.symmetric(vertical:10),
              child: Padding(
                padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                child: Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),
                  child: Column(
                        children: [
                          Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(25.0),
                                child: Image.asset('assets/CoverImage9.png')),
                              Positioned(
                                top: 15,
                                right: 15,
                                child: Container(
                                  width:50,
                                  height:50,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                                    border: Border.all(color: Color.fromRGBO(141, 141, 141, 1.0).withAlpha(40)),
                                  ),
                                  child: Center(
                                    child: LikeButton(
                                      size: 25,
                                      isLiked: isLiked,
                                      likeBuilder: (isLiked) {
                                        final color = isLiked ? Colors.red : Colors.grey;
                                        return Icon(Icons.favorite, color:color, size:25);
                                      },
                                      onTap: (isLiked) async {
                                        this.isLiked = !isLiked;
                                        return !isLiked;
                                      }
                                    ),
                                  ),
                              ), 
                              ), 
                            ],
                          ),
                          SizedBox(height:5),
                          Column(
                            children: [
                              Center(
                                child: Text(
                                  " Mr Beast's #TeamSeas aims to clean",
                                style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                      ),
                                            ),
                              ),
                              Center(
                                  child: Text(
                                    '30 Million pounds of ocean trash',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Divider(height:10),
                              Center(
                                  child: Text(
                                    '9th November 2021',
                                    style: TextStyle(
                                      color: Color.fromRGBO(141, 141, 141, 1.0),
                                      fontSize: 16, 
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                            ],
                          ),
                        ],
                      ),
                ),
            ),
      ),
    ),

    // News 9


          ],
        ),
            ),
          ],
        ),
    );
  }
}

