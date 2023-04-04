// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:credit_saison/colors.dart';
import 'package:credit_saison/innerlines.dart';
import 'package:credit_saison/line2.dart';
import 'package:credit_saison/lines.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(''),
            Stack(
              children: [
                Icon(
                  Icons.notifications_on,
                ),
                Positioned(
                    top: -1.0,
                    right: -1.0,
                    child: Stack(
                      children: [
                        Icon(
                          Icons.brightness_1,
                          color: colors.myred,
                          size: 12.0,
                        )
                      ],
                    ))
              ],
            )
          ],
        ),
        centerTitle: true,
        backgroundColor: colors.transparent,
        elevation: 0,
      ),
      drawer: Drawer(
        child: Container(
          color: colors.darkblue,
          child: ListView(
            children: [
              DrawerHeader(
                child: Center(
                  child: Text(
                    'Credit Saison',
                    style: TextStyle(
                      fontSize: 20,
                      color: colors.mywhite,
                      fontFamily: 'Poppins',
                    ),
                  ),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.home_mini,
                  color: colors.mywhite,
                ),
                title: Text(
                  'Home',
                  style: TextStyle(
                    fontSize: 18,
                    color: colors.mywhite,
                    fontFamily: 'Poppins',
                  ),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              )
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                colors.myblack,
                colors.blackblue,
                colors.blackblue,
                colors.blackblue,
              ],
              begin: Alignment.topRight,
              transform: GradientRotation(0.2),
            ),
          ),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: mediaQuery.viewPadding.top + 80),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: colors.darkblue,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(40),
                          bottomRight: Radius.circular(40),
                        ),
                      ),
                      height: mediaQuery.size.height * 0.07,
                      width: mediaQuery.size.width * 0.7,
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                                left: mediaQuery.viewPadding.left + 20),
                            child: Container(
                              height: mediaQuery.size.height * 0.03,
                              width: mediaQuery.size.width * 0.12,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('assets/percent.png'),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                left: mediaQuery.viewPadding.left + 15),
                            child: Text(
                              '0% Processing fee',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: colors.mywhite,
                                fontFamily: 'Poppins',
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: Stack(
                  children: [
                    SizedBox(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            height: mediaQuery.size.height * 0.25,
                            width: mediaQuery.size.width * 0.3,
                            child: Center(
                              child: CircularPercentIndicator(
                                radius: 80,
                                lineWidth: 15,
                                percent: 0.4,
                                progressColor: colors.green,
                                backgroundColor: colors.mywhite,
                                circularStrokeCap: CircularStrokeCap.round,
                                center: Text(
                                  '25 % Utilised',
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: colors.mywhite,
                                    fontFamily: 'Poppins',
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: mediaQuery.size.height * 0.25,
                            width: mediaQuery.size.width * 0.3,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                SizedBox(
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            'Total Limit',
                                            style: TextStyle(
                                              fontSize: 16,
                                              color: colors.mywhite,
                                              fontFamily: 'Poppins',
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            '₹ 2,00,000',
                                            style: TextStyle(
                                              fontSize: 20,
                                              color: colors.mywhite,
                                              fontFamily: 'Poppins',
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            'Utilised limit',
                                            style: TextStyle(
                                              fontSize: 16,
                                              color: colors.mywhite,
                                              fontFamily: 'Poppins',
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            '₹ 50,000',
                                            style: TextStyle(
                                              fontSize: 20,
                                              color: colors.mywhite,
                                              fontFamily: 'Poppins',
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            'Available Limit',
                                            style: TextStyle(
                                              fontSize: 16,
                                              color: colors.mywhite,
                                              fontFamily: 'Poppins',
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            '₹ 1,50,000',
                                            style: TextStyle(
                                              fontSize: 20,
                                              color: colors.mywhite,
                                              fontFamily: 'Poppins',
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      bottom: 100,
                      left: 90,
                      child: Row(
                        children: [
                          Container(
                            height: mediaQuery.size.height * 0.05,
                            width: mediaQuery.size.width * 0.6,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  colors.skyblue,
                                  colors.skyblue,
                                  colors.lightblue,
                                ],
                                begin: Alignment.topCenter,
                                transform: GradientRotation(0.2),
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Center(
                              child: Text(
                                'Withdraw More',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: colors.darkblue,
                                  fontFamily: 'Poppins',
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Lines(),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: mediaQuery.viewPadding.top + 60,
                ),
                child: Container(
                  height: mediaQuery.size.height * 0.25,
                  width: double.infinity,
                  color: colors.mywhite,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              left: mediaQuery.viewPadding.left + 40,
                            ),
                            child: Text(
                              'All Withdrawals',
                              style: TextStyle(
                                fontSize: 18,
                                color: colors.blackblue,
                                fontFamily: 'Poppins',
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: mediaQuery.size.height * 0.09,
                        width: double.infinity,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: colors.blackblue,
                              ),
                              height: mediaQuery.size.height * 0.08,
                              width: mediaQuery.size.width * 0.37,
                              child: Stack(
                                children: [
                                  Positioned(
                                    top: 10,
                                    left: 10,
                                    child: Text(
                                      'Ongoing',
                                      style: TextStyle(
                                        fontSize: 17,
                                        color: colors.mywhite,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: 'Poppins',
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 10,
                                    left: 120,
                                    child: Text(
                                      '1',
                                      style: TextStyle(
                                        fontSize: 22,
                                        color: colors.mywhite,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Poppins',
                                      ),
                                    ),
                                  ),
                                  Inlines(),
                                ],
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: colors.mygrey,
                              ),
                              height: mediaQuery.size.height * 0.08,
                              width: mediaQuery.size.width * 0.37,
                              child: Stack(
                                children: [
                                  Positioned(
                                    top: 10,
                                    left: 10,
                                    child: Text(
                                      'Past',
                                      style: TextStyle(
                                        fontSize: 17,
                                        color: colors.mywhite,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: 'Poppins',
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 10,
                                    left: 110,
                                    child: Text(
                                      '2',
                                      style: TextStyle(
                                        fontSize: 22,
                                        color: colors.mywhite,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Poppins',
                                      ),
                                    ),
                                  ),
                                  Line2(),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: mediaQuery.size.height * 0.08,
                        width: double.infinity,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: mediaQuery.viewPadding.left + 40,
                                  ),
                                  child: Text(
                                    'Download Documents',
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: colors.blackblue,
                                      fontFamily: 'Poppins',
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  height: mediaQuery.size.height * 0.04,
                                  width: mediaQuery.size.width * 0.38,
                                  decoration: BoxDecoration(
                                    color: colors.transparent,
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(color: colors.blackblue),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Icon(
                                        Icons.download,
                                        color: colors.blackblue,
                                        size: 18,
                                      ),
                                      Text(
                                        'Sanction letter',
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: colors.blackblue,
                                          fontFamily: 'Poppins',
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  height: mediaQuery.size.height * 0.04,
                                  width: mediaQuery.size.width * 0.38,
                                  decoration: BoxDecoration(
                                    color: colors.transparent,
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(color: colors.blackblue),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Icon(
                                        Icons.download,
                                        color: colors.blackblue,
                                        size: 18,
                                      ),
                                      Text(
                                        'Agreement letter',
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: colors.blackblue,
                                          fontFamily: 'Poppins',
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
