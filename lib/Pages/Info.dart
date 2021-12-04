import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Information extends StatelessWidget {
  const Information({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        height: 80,
        color: Colors.white,
        child: OutlinedButton(
            style: OutlinedButton.styleFrom(
                elevation: 0,
                primary: Colors.black,
                padding: EdgeInsets.zero,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10))),
            onPressed: () {},
            child: Text(
              "Edit Consult Details",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w400,
              ),
            )),
      ),

      //
      appBar: AppBar(
          centerTitle: true,
          title: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                "Online Appoiment",
                style: TextStyle(
                    fontFamily: 'Montserrat',
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
              ),
              Text(
                "Accepted",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w300),
              ),
            ],
          ),
          elevation: 0,
          backgroundColor: Colors.white,
          leading: Container(
            margin: EdgeInsets.all(6),
            padding: const EdgeInsets.all(4.0),
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(width: 1, color: Colors.black),
            ),
            child: IconButton(
              color: Colors.black,
              iconSize: 24,
              padding: EdgeInsets.all(5),
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back_outlined),
            ),
          ),
          actions: <Widget>[
            Container(
              width: 48,
              margin: EdgeInsets.all(6),
              padding: const EdgeInsets.all(4.0),
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(width: 1, color: Colors.blue),
              ),
              child: IconButton(
                color: Colors.blue,
                iconSize: 24,
                padding: EdgeInsets.all(5),
                onPressed: () {},
                icon: Icon(Icons.more_horiz_outlined),
              ),
            ),
          ]),

      // ******************** body **********************
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 10,
              ),
              Container(
                constraints: new BoxConstraints.expand(
                  height: 120.0,
                ),
                child: Card(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  color: Colors.white,
                  child: Container(
                    padding: EdgeInsets.all(18),
                    child: Row(
                      children: <Widget>[
                        Container(
                          height: 70,
                          width: 70,
                          child: Image.asset("assets/images/Profile.png"),
                        ),
                        //
                        SizedBox(
                          width: 14,
                        ),
                        //
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Dr. Ethel Goodwin",
                              style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(vertical: 5),
                              child: Text(
                                "Dental Hyginetist",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w300,
                                  color: Color(0xff595959),
                                ),
                              ),
                            ),
                            Text(
                              "4.8 ( 1111 Feedback)",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff595959),
                              ),
                            ),
                          ],
                        ),

                        //

                        Container()
                      ],
                    ),
                  ),
                ),
              ),

              SizedBox(
                height: 10,
              ),

              // Second card *******8
              Container(
                constraints: new BoxConstraints.expand(
                  height: 180.0,
                ),
                child: Card(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  color: Colors.white,
                  child: Container(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      children: <Widget>[
                        //
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Container(
                                  height: 40,
                                  width: 40,
                                  margin: EdgeInsets.all(6),
                                  padding: const EdgeInsets.all(4.0),
                                  decoration: BoxDecoration(
                                    color: Color(0xffE8FEFF),
                                    shape: BoxShape.rectangle,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Center(
                                    child: IconButton(
                                      color: Colors.blue,
                                      iconSize: 22,
                                      padding: EdgeInsets.all(5),
                                      onPressed: () {},
                                      icon: Icon(Icons.calendar_today_outlined),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Visit Time ",
                                  style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                              ],
                            ),

                            // end icon *******
                            Container(
                              height: 40,
                              width: 40,
                              margin: EdgeInsets.all(6),
                              padding: const EdgeInsets.all(4.0),
                              decoration: BoxDecoration(
                                color: Color(0xff587DFF),
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: IconButton(
                                  color: Colors.blue,
                                  iconSize: 22,
                                  padding: EdgeInsets.all(5),
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.create_rounded,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),

                        //
                        SizedBox(
                          height: 20,
                        ),
                        //

                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Jan 5",
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w400,
                                fontSize: 14),
                          ),
                        ),
                        Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                          alignment: Alignment.topLeft,
                          child: Text(
                            "08: 00 PM - 08: 30 PM Alarm before 30 mins Live Chat Consult: 45 Rs. / visit ",
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w400,
                                fontSize: 14),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              SizedBox(
                height: 10,
              ),

              Container(
                constraints: new BoxConstraints.expand(
                  height: 300.0,
                ),
                child: Card(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  color: Colors.white,
                  child: Container(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      children: <Widget>[
                        //
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Container(
                                  height: 40,
                                  width: 40,
                                  margin: EdgeInsets.all(6),
                                  padding: const EdgeInsets.all(4.0),
                                  decoration: BoxDecoration(
                                    color: Color(0xffE8FEFF),
                                    shape: BoxShape.rectangle,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Center(
                                    child: IconButton(
                                      color: Colors.blue,
                                      iconSize: 22,
                                      padding: EdgeInsets.all(5),
                                      onPressed: () {},
                                      icon: Icon(Icons.help_outline_rounded),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Consult Details",
                                  style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                              ],
                            ),
                          ],
                        ),

                        //
                        SizedBox(
                          height: 20,
                        ),
                        //

                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          alignment: Alignment.topLeft,
                          child: Text(
                            "For Nora 4 years old",
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w400,
                                fontSize: 14),
                          ),
                        ),
                        Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Late falling of milk teeth on a child, resulting in two rows of milk and permanent teeth at the same time, what could help?",
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w400,
                                fontSize: 14),
                          ),
                        ),

                        SizedBox(
                          height: 30,
                        ),

                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Row(
                            children: <Widget>[
                              Container(
                                height: 70,
                                width: 70,
                                child: Image.asset("assets/images/Profile.png"),
                              ),
                              //
                              SizedBox(
                                width: 14,
                              ),
                              //
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    "Dr. Ethel Goodwin",
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.symmetric(vertical: 5),
                                    child: Text(
                                      "Dental Hyginetist",
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w300,
                                        color: Color(0xff595959),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    "4.8 ( 1111 Feedback)",
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xff595959),
                                    ),
                                  ),
                                ],
                              ),

                              //
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              // paste part ***************8888
              //

              SizedBox(
                height: 10,
              ),

              //********* *

              Container(
                constraints: new BoxConstraints.expand(
                  height: 280.0,
                ),
                child: Card(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  color: Colors.white,
                  child: Container(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      children: <Widget>[
                        //
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Container(
                                  height: 40,
                                  width: 40,
                                  margin: EdgeInsets.all(6),
                                  padding: const EdgeInsets.all(4.0),
                                  decoration: BoxDecoration(
                                    color: Color(0xffE8FEFF),
                                    shape: BoxShape.rectangle,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Center(
                                    child: IconButton(
                                      color: Colors.blue,
                                      iconSize: 22,
                                      padding: EdgeInsets.all(5),
                                      onPressed: () {},
                                      icon: Icon(
                                          Icons.format_list_bulleted_rounded),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Additional Information",
                                  style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                              ],
                            ),
                          ],
                        ),

                        //
                        SizedBox(
                          height: 20,
                        ),
                        //

                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Diagnosed Conditions ",
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w400,
                                fontSize: 14),
                          ),
                        ),
                        Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                          alignment: Alignment.topLeft,
                          child: Text(
                            "None",
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w400,
                                fontSize: 14),
                          ),
                        ),

                        //
                        SizedBox(
                          height: 10,
                        ),

                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Medications",
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w400,
                                fontSize: 14),
                          ),
                        ),
                        Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                          alignment: Alignment.topLeft,
                          child: Text(
                            "None",
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w400,
                                fontSize: 14),
                          ),
                        ),

                        SizedBox(
                          height: 10,
                        ),

                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Allergies",
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w400,
                                fontSize: 14),
                          ),
                        ),
                        Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                          alignment: Alignment.topLeft,
                          child: Text(
                            "None",
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w400,
                                fontSize: 14),
                          ),
                        ),
                        //

                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              Container(
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 27,
                    ),
                    Text(
                      "For medical emergencies please call 911 ( or your local emergrncy services) or go to the nearest ER",
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 14,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    TextButton(
                      child: Text(
                        "Cancel Appointment",
                        style: TextStyle(
                          color: Colors.black,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                      onPressed: () {
                        setState(() {});
                      },
                    ),
                    SizedBox(
                      height: 130,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void setState(Null Function() param0) {}
}
