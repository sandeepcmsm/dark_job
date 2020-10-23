import 'package:dark_job/atoms/text_base.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScreenThree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF22242C),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height / 2,
              color: Color(0xFF22242C),
            ),
            Container(
              height: MediaQuery.of(context).size.height / 2,
              decoration: BoxDecoration(
                color: Color(0xFF1A1B20),
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(16),
                    topLeft: Radius.circular(16)),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 24.0, right: 24, top: 16, bottom: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        TextBase(
                          'James Martinia Junior',
                          maxLines: 2,
                          fontSize: 32,
                          textAlign: TextAlign.start,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 16.0),
                          child: Row(
                            children: <Widget>[
                              TextBase(
                                'Actively Looking',
                                fontSize: 16,
                                textAlign: TextAlign.start,
                                fontWeight: FontWeight.normal,
                                color: Colors.grey,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(0xFFFFABC8),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(2.0),
                                    child: Center(
                                        child: Icon(
                                      Icons.check,
                                      size: 16,
                                    )),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 24.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              ProfileDetailCard(
                                heading: 'Applied',
                                value: '98',
                              ),
                              ProfileDetailCard(
                                heading: 'Reviewed',
                                value: '72',
                              ),
                              ProfileDetailCard(
                                heading: 'Contacted',
                                value: '19',
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xFF8AC185),
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(16),
                          topLeft: Radius.circular(16)),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 16.0, bottom: 16, left: 24, right: 24),
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    TextBase(
                                      'Complete Profile',
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 8.0),
                                      child: TextBase(
                                        'Personla Job| Job Experience| Certification.',
                                        color: Colors.black,
                                        fontSize: 12,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8.0)),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: Icon(Icons.arrow_forward),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProfileDetailCard extends StatelessWidget {
  final String heading;
  final String value;

  const ProfileDetailCard({@required this.heading, @required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TextBase(
          heading,
          color: Colors.grey,
          fontSize: 14,
        ),
        SizedBox(
          height: 8,
        ),
        TextBase(
          value,
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ],
    );
  }
}
