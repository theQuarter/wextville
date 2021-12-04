import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Doctors {
  static final DoctorsList = [
    DoctorData(id: 1, date: 'Jan 5', doctor: doctorList),
    DoctorData(id: 2, date: 'jan 8', doctor: doctorList),
  ];

  static final DoctorsPastList = [
    DoctorData(id: 1, date: 'Sunday, jan 8 2020', doctor: doctorPastList),
    DoctorData(id: 2, date: 'Monday, jan 8 2020', doctor: doctorPastList),
  ];

  static final List<Doctor> doctorList = [
    Doctor(
      id: 1,
      icon: "assets/images/Climate1.png",
      name: "Dr.kiran kshirsagar",
      userimage: "assets/images/Profile2.png",
      meetingType: 'Appointment',
      isAccept: 'Accepted',
      time: '2:00 AM - 5:22 PM',
      Color: 0xff4478FF,
      Icon: Icons.calendar_today_outlined,
    ),
    Doctor(
      id: 2,
      icon: "assets/images/Climate1.png",
      name: "Dr.noval plash",
      userimage: "assets/images/Profile.png",
      meetingType: 'Live chat',
      isAccept: 'UnConfirmed',
      time: '2:00 AM - 5:22 PM',
      Color: 0xffF50085,
      Icon: Icons.chat_outlined,
    ),
    Doctor(
      id: 3,
      icon: "assets/images/Climate1.png",
      name: "Dr.Amol mohite",
      userimage: "assets/images/Profile2.png",
      meetingType: 'Message',
      isAccept: 'Completed',
      time: '2:00 AM - 5:22 PM',
      Color: 0xff4478FF,
      Icon: Icons.mail_outline,
    ),
  ];

  static final List<Doctor> doctorPastList = [
    Doctor(
      id: 1,
      icon: "assets/images/Climate1.png",
      name: "Dr.kiran kshirsagar",
      userimage: "assets/images/Profile2.png",
      meetingType: 'Appointment',
      isAccept: 'Accepted',
      time: '2:00 AM - 5:22 PM',
      Color: 0xff4478FF,
      Icon: Icons.calendar_today_outlined,
    ),
    Doctor(
      id: 2,
      icon: "assets/images/Climate1.png",
      name: "Dr.noval plash",
      userimage: "assets/images/Profile.png",
      meetingType: 'Live chat',
      isAccept: 'UnConfirmed',
      time: '2:00 AM - 5:22 PM',
      Color: 0xffF50085,
      Icon: Icons.chat_outlined,
    ),
    Doctor(
      id: 3,
      icon: "assets/images/Climate1.png",
      name: "Dr.Amol mohite",
      userimage: "assets/images/Profile2.png",
      meetingType: 'Message',
      isAccept: 'Completed',
      time: '2:00 AM - 5:22 PM',
      Color: 0xff4478FF,
      Icon: Icons.mail_outline,
    ),
  ];
}

class DoctorData {
  final int id;
  final String date;
  final List<Doctor> doctor;
  DoctorData({required this.id, required this.date, required this.doctor});
}

class Doctor {
  final int id;
  final String icon;
  final String userimage;
  final String name;
  final String meetingType;
  final String isAccept;
  final String time;
  final int Color;
  final IconData Icon;

  Doctor({
    required this.id,
    required this.icon,
    required this.name,
    required this.userimage,
    required this.meetingType,
    required this.isAccept,
    required this.time,
    required this.Color,
    required this.Icon,
  });
}
