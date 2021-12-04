import 'package:flutter/material.dart';
import 'package:wextville/Models.dart/top_Scroll.dart';
import 'package:wextville/Models.dart/trending_Scroll.dart';
import 'package:wextville/widgets/TopScroll.dart';
import 'package:wextville/widgets/TreandingScroll.dart';

class searchComponent extends StatefulWidget {
  const searchComponent({Key? key}) : super(key: key);

  @override
  _searchComponentState createState() => _searchComponentState();
}

class _searchComponentState extends State<searchComponent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
          SafeArea(
            child: Container(
              color: Colors.white,
              margin: EdgeInsets.only(top: 20),
              height: 50,
              //padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
              child: TextField(
                  decoration: InputDecoration(
                fillColor: Colors.black,
                border: OutlineInputBorder(
                    borderSide: BorderSide(width: 2),
                    borderRadius: BorderRadius.all(Radius.circular(7.0))),
                prefixIcon: Icon(
                  Icons.search_outlined,
                  color: Colors.black,
                ),
                hintText: 'Search health issue, doctor, topic..',
              )),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Top Specialities",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),

              //seee button
              Row(
                children: <Widget>[
                  Text("See All",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w200,
                      )),
                  IconButton(
                      onPressed: () {
                        setState(() {});
                      },
                      icon: Icon(Icons.chevron_right_outlined)),
                ],
              )
            ],
          ),
          SizedBox(
            height: 1,
          ),
          SizedBox(
            height: 90,
            child: ListView.builder(
                itemCount: TopScrollCards.Items.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => TopScroll(
                      item: TopScrollCards.Items[index],
                    )),
          ),

          ///treanding mark start
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Trending Topics",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),

              //seee button
              Row(
                children: <Widget>[
                  Text("See All",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w200,
                      )),
                  IconButton(
                      onPressed: () {
                        setState(() {});
                      },
                      icon: Icon(Icons.chevron_right_outlined)),
                ],
              )
            ],
          ),

          //treanding mark end

          // start trending dynamic horizontal page

          SizedBox(
            height: 170,
            child: ListView.builder(
                itemCount: TrendingCards.Users.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return TrendingScroll(
                    user: TrendingCards.Users[index],
                  );
                }),
          ),

          //add tagline

          Container(
            padding: EdgeInsets.symmetric(vertical: 20),
            alignment: Alignment.topLeft,
            child: Text(
              "Search Special",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),

          Flexible(
            child: ListView.builder(
                itemCount: TopScrollCards.Items.length,
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                //scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  return Container(
                      child: Card(
                    color: Colors.white,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: Container(
                      margin: EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Container(
                                height: 60,
                                width: 60,
                                child: Card(
                                  //color: Color(0xff00B9AE),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Container(
                                    constraints: BoxConstraints.expand(
                                      height: 60,
                                      width: 60,
                                    ),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        gradient: LinearGradient(
                                            begin: Alignment.topLeft,
                                            end: Alignment.bottomRight,
                                            colors: [
                                              Color(0xff00FFF0),
                                              Colors.blue
                                            ])),
                                    child: Container(
                                      margin: EdgeInsets.all(10),
                                      child: Image.asset(
                                          TopScrollCards.Items[index].icon),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                TopScrollCards.Items[index].name,
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                          Icon(
                            Icons.chevron_right,
                            size: 28,
                          ),
                        ],
                      ),
                    ),
                  ));
                }),
          ),
        ]),
      ),
    ));
  }
}
