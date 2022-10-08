import 'package:flutter/material.dart';
import '../util/bubble_stories.dart';
import '../util/user_post.dart';

class UserHome extends StatelessWidget {
  final List people = [
    'Jamiul Haque',
    'Tanvir Islam',
    'Mustafa Zaman Iffat',
    'Salauddin Shoeb',
    'Mubtasim Fuad (Arnab)',
    'Al Helal Nayeem'
  ];
  UserHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Instagram',
              style: TextStyle(color: Colors.green),
            ),
            Row(
              children: const [
                Icon(Icons.add),
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Icon(Icons.favorite),
                ),
                Icon(Icons.send),
              ],
            )
          ],
        ),
      ),
      body: Column(
        children: [
          //STORIES
          Container(
            height: 130,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: people.length,
              itemBuilder: (context, index) {
                return BubbleStories(text: people[index]);
              },
            ),
          ),
          //POSTS
          Expanded(
            child: ListView.builder(
              itemCount: people.length,
              itemBuilder: (context, index) {
                return UserPosts(name: people[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}
