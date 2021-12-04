import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wextville/Models.dart/doctors.dart';
import 'package:wextville/widgets/DoctorCard.dart';

class DoctorList extends StatefulWidget {
  const DoctorList({Key? key}) : super(key: key);

  @override
  _DoctorListState createState() => _DoctorListState();
}

class _DoctorListState extends State<DoctorList> {
  List<String> list = ['Next Consults', 'Past Consult'];

  List<DoctorData> listDoctor = [];
  int num = 0;
  bool flag = true;
  final controller = ScrollController();

  void scrollUp() {
    final double start = 0;
    controller.jumpTo(start);
  }

  void scrollDown() {
    final double end = controller.position.maxScrollExtent;
    controller.jumpTo(end);
  }

  Widget SetUnderline(int val) {
    if (num == 0 && val == 0) {
      scrollUp();
      flag = true;
      return Container(
        margin: EdgeInsets.only(left: 14),
        height: 3,
        width: 40,
        color: Colors.black,
      );
    } else if (num == 1 && val == 0) {
      return Text('');
    } else if (num == 1 && val == 1) {
      scrollDown();
      flag = false;
      return Container(
        margin: EdgeInsets.only(left: 14),
        height: 3,
        width: 40,
        color: Colors.black,
      );
    } else {
      return Text('');
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
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
                icon: Icon(Icons.event_note_outlined),
              ),
            ),

            // second icon

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
                icon: Icon(Icons.add_outlined),
              ),
            ),
          ],
        ),

        //body
        body: SingleChildScrollView(
          child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  SizedBox(
                    height: 80,
                    child: ListView.builder(
                        controller: controller,
                        itemCount: list.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Container(
                            padding: EdgeInsets.symmetric(horizontal: 14),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                TextButton(
                                    onPressed: () {
                                      setState(() {
                                        num = index;
                                      });
                                    },
                                    child: Text(
                                      list[index],
                                      style: TextStyle(
                                          fontFamily: 'Montserrat',
                                          fontWeight: FontWeight.w600,
                                          fontSize: 30,
                                          color: Colors.black),
                                    )),
                                SetUnderline(index)
                              ],
                            ),
                          );
                        }),
                  ),
                  //
                  Flexible(
                    child: ListView.builder(
                        itemCount: Doctors.DoctorsList.length,
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        //scrollDirection: Axis.vertical,
                        itemBuilder: (context, index) {
                          return Container(
                            child: Column(
                              children: <Widget>[
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(horizontal: 6),
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    //"jan 5",
                                    Doctors.DoctorsList[index].date,
                                    style: TextStyle(
                                      fontSize: 17,
                                    ),
                                  ),
                                ),

                                SizedBox(
                                  height: 20,
                                ),
                                //bottom card

                                Container(
                                  child: DoctorCard(
                                      doctor:
                                          Doctors.DoctorsList[index].doctor),
                                )
                              ],
                            ),
                          );
                        }),
                  ),
                  //
                ],
              )),
        ),
      ),
    );
  }
}

//list[index]
