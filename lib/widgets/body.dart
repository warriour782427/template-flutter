import 'package:flutter/material.dart';
import 'package:hello_world/utils/utils.dart';
import 'package:hello_world/widgets/contact_button.dart';

class Body extends StatelessWidget {
  Body({Key? key}) : super(key: key);

  final List projectsList = [
    {
      'title': 'Building Web Page',
      'subtitle': "It is building a web Page",
      'image': 'https://picsum.photos/id/100/700/300',
    },
    {
      'title': 'Building App Page',
      'subtitle': "It is building a App Page",
      'image': 'https://picsum.photos/id/1014/700/300',
    },
    {
      'title': 'Building Ios Page',
      'subtitle': "It is building a Ios Page",
      'image': 'https://picsum.photos/id/1025/700/300',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
            flex: 1,
            child: Container(
              color: Colors.white,
              child: Column(
                children: [
                  Expanded(
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Opacity(
                            opacity: 0.5, child: Image.asset('headshot.png')),
                        Align(
                            alignment: Alignment.topCenter,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                    "I \'m Irfan. \nA Web & App Developer \nAnd a Student",
                                    style: TextStyle(
                                        fontSize: 44.5,
                                        fontWeight: FontWeight.bold)),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 75, horizontal: 100),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: ContactButton(
                                      buttonText: ("Drop Me A Line"),
                                      icon: Icon(Icons.mail_outline),
                                      onPressed: () {
                                        launchMailto();
                                      },
                                    ),
                                  ),
                                )
                              ],
                            )),
                      ],
                    ),
                  )
                ],
              ),
            )),
        Expanded(
          child: Container(
              color: Color(0xfe0e0eb),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 200,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "My Projects",
                        style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.w600,
                            color: Colors.black54),
                      ),
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: projectsList.length,
                      itemBuilder: (context, index) {
                        return Container(
                          child: Column(
                            children: [
                              Card(
                                elevation: 3,
                                child: Column(
                                  children: [
                                    ListTile(
                                        leading: Icon(Icons.work),
                                        title: Text(
                                          projectsList[index]['title'],
                                          style: TextStyle(fontSize: 30),
                                        ),
                                        subtitle: Text(
                                            projectsList[index]['subtitle'],
                                            style: TextStyle(fontSize: 20))),
                                    Container(
                                      child: Container(
                                          alignment: Alignment.center,
                                          child: Padding(
                                            padding: const EdgeInsets.all(40.0),
                                            child: Image.network(
                                                projectsList[index]['image']),
                                          )),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  )
                ],
              )),
        ),
        SizedBox(
          width: 100,
        )
      ],
    );
  }
}
