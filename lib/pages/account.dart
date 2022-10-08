import 'package:flutter/material.dart';
import 'package:instagram_ui/util/account_tab1.dart';
import 'package:instagram_ui/util/account_tab2.dart';
import 'package:instagram_ui/util/account_tab3.dart';
import 'package:instagram_ui/util/account_tab4.dart';
import 'package:instagram_ui/util/bubble_stories.dart';

class UserAccount extends StatelessWidget {
  const UserAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 40.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      shape: BoxShape.circle,
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: const [
                            Text(
                              '235',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            Text('Posts'),
                          ],
                        ),
                        Column(
                          children: const [
                            Text(
                              '30455',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            Text('Followers'),
                          ],
                        ),
                        Column(
                          children: const [
                            Text(
                              '20',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            Text('Following'),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Jamiul Haque',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Padding(
                      padding: EdgeInsets.symmetric(vertical: 2.0),
                      child: Text('i am create apps')),
                  Text(
                    'github.com/jamiul-haque',
                    style: TextStyle(color: Colors.blue),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Container(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(child: Text('Edit Profile')),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(5)),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Container(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(child: Text('Add Tool')),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(5)),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Container(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(child: Text('Insights')),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(5)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              child: Row(
                children: const [
                  BubbleStories(text: 'story 1'),
                  BubbleStories(text: 'story 2'),
                  BubbleStories(text: 'story 3'),
                  BubbleStories(text: 'story 4'),
                ],
              ),
            ),
            const TabBar(tabs: [
              Tab(icon: Icon(Icons.grid_3x3_outlined)),
              Tab(icon: Icon(Icons.video_call)),
              Tab(icon: Icon(Icons.shop)),
              Tab(icon: Icon(Icons.person)),
            ]),
            const Expanded(
                child: TabBarView(children: [
              AccountTab1(),
              AccountTab2(),
              AccountTab3(),
              AccountTab4(),
            ]))
          ],
        ),
      ),
    );
  }
}
