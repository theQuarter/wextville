import 'package:flutter/material.dart';
import 'package:wextville/Models.dart/home_Card.dart';

class HomeComponent extends StatefulWidget {
  const HomeComponent({Key? key}) : super(key: key);

  @override
  _HomeComponentState createState() => _HomeComponentState();
}

class _HomeComponentState extends State<HomeComponent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xffF8F8F8),
        margin: EdgeInsets.all(12),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Image.asset(
                          "assets/images/Profile.png",
                          height: 50,
                          width: 50,
                        ),
                        SizedBox(
                          width: 20,
                        ),

                        //Both name are visible
                        Column(
                          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,

                          children: <Widget>[
                            Text(
                              "Hi Devin,",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "How’re you today",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w200,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    // SizedBox(
                    //   width: 125,
                    // ),
                    Container(
                      padding: const EdgeInsets.all(4.0),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: .5,
                            ),
                          ]),
                      child: IconButton(
                        color: Colors.red,
                        iconSize: 30,
                        padding: EdgeInsets.all(5),
                        onPressed: () {},
                        icon: Icon(Icons.notifications_outlined),
                      ),
                    ),
                  ],
                ),

                Container(
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
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Tasks for today",
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            color: Colors.black,
                            fontSize: 26,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "7 of 9 completed",
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w200,
                          ),
                        )
                      ],
                    ),
                    Image.asset(
                      "assets/images/Icons.png",
                      height: 80,
                      width: 80,
                    ),
                  ],
                ),

                SizedBox(
                  height: 40,
                ),

                // 4 card place in this fild
                GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 5.0,
                    mainAxisSpacing: 5.0,
                  ),
                  itemCount: HomeCard.Pics.length,
                  itemBuilder: (context, index) {
                    return Container(
                      child: Card(
                          elevation: 2,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(
                              child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Image.asset(
                                HomeCard.Pics[index].icon,
                                height: 64,
                                width: 64,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  HomeCard.Pics[index].name,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 18,
                                  ),
                                ),
                              )
                            ],
                          ))),
                    );
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
