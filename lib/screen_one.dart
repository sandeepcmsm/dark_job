import 'package:dark_job/atoms/text_base.dart';
import 'package:dark_job/atoms/text_input.dart';
import 'package:dark_job/atoms/text_one.dart';
import 'package:dark_job/atoms/text_three.dart';
import 'package:dark_job/atoms/text_two.dart';
import 'package:dark_job/screen_three.dart';
import 'package:dark_job/screen_two.dart';
import 'package:dark_job/utils/strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class JobCategory {
  final String heading;
  final String subHeading;
  final Widget icon;
  final Color color;

  JobCategory(this.heading, this.subHeading, this.icon, this.color);
}

class ScreenOne extends StatelessWidget {
  final List<JobCategory> jobCategoryList = List();

  ScreenOne() {
    jobCategoryList.add(JobCategory(
      'Design',
      '3.2K',
      Icon(
        Icons.restaurant_menu,
        color: Colors.black,
      ),
      Color(0xFFFED47E),
    ));
    jobCategoryList.add(JobCategory(
      'Network',
      '2.8K',
      Icon(
        Icons.network_check,
        color: Colors.black,
      ),
      Color(0xFFFFABC8),
    ));
    jobCategoryList.add(JobCategory(
      'Security',
      '3.2K',
      Icon(
        Icons.security,
        color: Colors.black,
      ),
      Color(0xFF7868D8),
    ));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF22242C),
      appBar: AppBar(
        leading: Icon(Icons.menu),
      ),
      body: Container(
        padding: const EdgeInsets.only(left: 24.0, right: 24),
        child: SingleChildScrollView(
          padding: const EdgeInsets.only(bottom: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: TextOne(
                  Strings.FIND_THE_WORLD_MOST_AMAZING_JOB,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: SearchBar(),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 32.0),
                child: TextTwo(
                  Strings.JOB_MATCHED,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => ScreenTwo()));
                    },
                    child: JobMatchedCard()),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 32.0),
                child: TextTwo(
                  Strings.JOB_CATEGORY,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: Container(
                  height: 165,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    separatorBuilder: (BuildContext context, int index) =>
                        const Divider(indent: 16),
                    itemBuilder: (context, index) {
                      return JobCategoryCard(
                        icon: jobCategoryList[index].icon,
                        heading: jobCategoryList[index].heading,
                        subHeading: jobCategoryList[index].subHeading,
                        color: jobCategoryList[index].color,
                      );
                    },
                    itemCount: jobCategoryList.length,
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

class SearchBar extends StatelessWidget {
  final TextEditingController textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.all(Radius.circular(12.0)),
      ),
      child: TextInput(
        controller: textEditingController,
        hintText: Strings.SEARCH_FOR_JOBS,
        suffixIcon: Padding(
          padding: const EdgeInsets.only(top: 4.0, bottom: 4, right: 8),
          child: Container(
            decoration: BoxDecoration(
              color: Color(0xFF262626),
              borderRadius: BorderRadius.all(Radius.circular(12.0)),
            ),
            child: Icon(
              Icons.menu,
              color: Colors.white,
            ),
          ),
        ),
        icon: Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Icon(
            Icons.search,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

class JobMatchedCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(12.0)),
        color: Color(0xFF8AC185),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                TextThree(
                  Strings.MASTER_CARD,
                  color: Colors.black87,
                ),
                Expanded(
                  child: Container(),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Icon(
                    Icons.menu,
                    color: Colors.black87,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: TextTwo(
                'Sr. Product Designer',
                color: Colors.black,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: Row(
                children: <Widget>[
                  SkillCard(
                    skill: 'User Interface',
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  SkillCard(skill: 'User Research/Flow'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 12.0),
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.access_time,
                    color: Colors.black87,
                    size: 16,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  TextBase(
                    'Be in the first 31 applicants',
                    color: Colors.black,
                    fontSize: 12,
                    textAlign: TextAlign.start,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.bold,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                      width: 120,
                      child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ScreenThree()));
                          },
                          child: PeopleList())),
                  Expanded(
                    child: Container(),
                  ),
                  TextBase(
                    '6 Hours Ago',
                    color: Colors.black,
                    fontSize: 12,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PeopleList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.blue,
            border: Border.all(color: Colors.white, width: 1),
          ),
          height: 32,
          width: 32,
        ),
        Positioned(
          left: 24,
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.blue,
              border: Border.all(color: Colors.white, width: 1),
            ),
            height: 32,
            width: 32,
          ),
        ),
        Positioned(
          left: 48,
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.blue,
              border: Border.all(color: Colors.white, width: 1),
            ),
            height: 32,
            width: 32,
          ),
        ),
        Positioned(
          left: 72,
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.black,
              border: Border.all(color: Colors.white, width: 1),
            ),
            height: 32,
            width: 32,
            child: Center(
              child: TextBase(
                '28',
                fontSize: 10,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class SkillCard extends StatelessWidget {
  final String skill;

  const SkillCard({@required this.skill});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(20.0)),
      ),
      child: Padding(
        padding:
            const EdgeInsets.only(left: 16.0, right: 16, top: 8, bottom: 8),
        child: TextBase(
          skill,
          color: Colors.black,
          fontSize: 10,
          textAlign: TextAlign.start,
          fontWeight: FontWeight.normal,
        ),
      ),
    );
  }
}

class JobCategoryCard extends StatelessWidget {
  final String heading;
  final Widget icon;
  final Color color;
  final String subHeading;

  const JobCategoryCard(
      {@required this.heading,
      @required this.icon,
      @required this.subHeading,
      @required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        color: color,
      ),
      child: Padding(
        padding:
            const EdgeInsets.only(top: 20.0, bottom: 16, left: 16, right: 16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: icon,
                )),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: TextBase(
                heading,
                color: Colors.black,
                fontSize: 14,
                textAlign: TextAlign.start,
                fontStyle: FontStyle.normal,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: TextBase(
                '$subHeading Jobs',
                color: Colors.black,
                fontSize: 18,
                textAlign: TextAlign.start,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.all(Radius.circular(4.0)),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 8.0, bottom: 8, left: 16, right: 16),
                  child: TextBase(
                    'View Jobs',
                    color: Colors.white,
                    fontSize: 10,
                    textAlign: TextAlign.start,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
