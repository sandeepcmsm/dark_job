import 'package:custom_switch_button/custom_switch_button.dart';
import 'package:dark_job/atoms/text_base.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScreenTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
      ),
      backgroundColor: Color(0xFF22242C),
      body: Padding(
        padding: const EdgeInsets.only(top: 16.0),
        child: Container(
          decoration: BoxDecoration(
            color: Color(0xFF1E1F26),
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(16), topLeft: Radius.circular(16)),
          ),
          child: Stack(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(
                    top: 16.0, bottom: 16, left: 24, right: 24),
                child: SingleChildScrollView(
                  padding: const EdgeInsets.only(bottom: 160),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Center(
                        child: Icon(
                          Icons.menu,
                          color: Colors.white,
                        ),
                      ),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: TextBase(
                            'Sr. Product Designer',
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: TextBase(
                            'Master Card',
                            color: Color(0xFFFFD57F),
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: TextBase(
                            '1600 Amptiamce parkway, Mountain View',
                            color: Colors.grey,
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 32.0),
                        child: TextBase(
                          'Job Descriptions',
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: TextBase(
                          '1600 Amptiamce parkway Mountain View 1600 Amptiamce parkway Mountain View  1600 Amptiamce parkway Mountain View  1600 Amptiamce parkway Mountain View \n\n 1600 Amptiamce parkway Mountain View 1600 Amptiamce parkway Mountain View  1600 Amptiamce parkway Mountain View  1600 Amptiamce parkway Mountain View 1600 Amptiamce parkway Mountain View 1600 Amptiamce parkway Mountain View  1600 Amptiamce parkway Mountain View  1600 Amptiamce parkway Mountain View \n\n 1600 Amptiamce parkway Mountain View 1600 Amptiamce parkway Mountain View  1600 Amptiamce parkway Mountain View  1600 Amptiamce parkway Mountain View 1600 Amptiamce parkway Mountain View 1600 Amptiamce parkway Mountain View  1600 Amptiamce parkway Mountain View  1600 Amptiamce parkway Mountain View \n\n 1600 Amptiamce parkway Mountain View 1600 Amptiamce parkway Mountain View  1600 Amptiamce parkway Mountain View  1600 Amptiamce parkway Mountain View 1600 Amptiamce parkway Mountain View 1600 Amptiamce parkway Mountain View  1600 Amptiamce parkway Mountain View  1600 Amptiamce parkway Mountain View \n\n 1600 Amptiamce parkway Mountain View 1600 Amptiamce parkway Mountain View  1600 Amptiamce parkway Mountain View  1600 Amptiamce parkway Mountain View',
                          color: Colors.grey,
                          fontSize: 10,
                          height: 1.6,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 24.0),
                        child: TextBase(
                          'Responsibility',
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: TextBase(
                          '1600 Amptiamce parkway Mountain View 1600',
                          color: Colors.grey,
                          fontSize: 10,
                          height: 1.6,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xFFFED47E),
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
                                    'Earn Skill Badge',
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8.0),
                                    child: TextBase(
                                      'Skills assesment helps you to stand out to recurters.',
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
                      Container(
                        decoration: BoxDecoration(
                          color: Color(0xFF7868D8),
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(16),
                              topLeft: Radius.circular(16)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 16.0, bottom: 16, left: 24, right: 24),
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    TextBase(
                                      'Similar Job Alerts',
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 8.0),
                                      child: TextBase(
                                        'Product Designer, Typosgraphy, Google',
                                        color: Colors.black,
                                        fontSize: 12,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              CustomSwitchButton(
                                backgroundColor: Colors.white,
                                unCheckedColor: Colors.black,
                                animationDuration: Duration(milliseconds: 400),
                                checkedColor: Colors.black,
                                checked: true,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
