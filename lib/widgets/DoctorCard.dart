import 'package:flutter/material.dart';
import 'package:wextville/Models.dart/doctors.dart';

class DoctorCard extends StatefulWidget {
  const DoctorCard({required this.doctor});

  final List<Doctor> doctor;

  @override
  _DoctorCardState createState() => _DoctorCardState();
}

class _DoctorCardState extends State<DoctorCard> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          itemCount: widget.doctor.length,
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          //scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                setState(() {
                  selectedIndex = index;
                  Navigator.pushNamed(context, '/Information');
                });
              },
              child: Container(
                  constraints: new BoxConstraints.expand(
                    height: 115.0,
                  ),
                  //color: Colors.red,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18)),
                    elevation: 1,
                    color: Colors.white,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          width: 100,
                          height: 100,
                          child: Stack(
                            children: <Widget>[
                              Positioned(
                                top: 16,
                                left: 5,
                                child: Container(
                                  height: 60,
                                  width: 80,
                                  padding: EdgeInsets.only(
                                    left: 20,
                                  ),
                                  child: ClipRRect(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(18)),
                                    child: Image.asset(
                                      widget.doctor[index].userimage,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                  bottom: 8.0,
                                  right: 2.0,
                                  child: Container(
                                    height: 34,
                                    width: 34,
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                      color: Color(widget.doctor[index].Color),
                                    ),
                                    child: Center(
                                      child: Icon(
                                        widget.doctor[index].Icon,
                                        size: 20,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ))
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              // padding: EdgeInsets.only(top: 10),
                              child: Row(
                                children: <Widget>[
                                  Text(
                                    widget.doctor[index].meetingType,
                                    style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 30,
                                  ),
                                  Text(
                                    widget.doctor[index].isAccept,
                                    style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(vertical: 5),
                              child: Text(
                                widget.doctor[index].name,
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            //

                            Container(
                              child: Text(
                                widget.doctor[index].time,
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )),
            );
          }),
    );
  }
}
