import 'package:facebook/model/story_model.dart';
import 'package:facebook/widgets/Newsfeed_post.dart';
import 'package:facebook/widgets/createpost.dart';
import 'package:facebook/widgets/storieslist.dart';
import 'package:flutter/material.dart';

class Newsfeed extends StatefulWidget {
  const Newsfeed({super.key});

  @override
  State<Newsfeed> createState() => _NewsfeedState();
}

class _NewsfeedState extends State<Newsfeed> {
//array
List<StoryModel> stories = [
 //pointer 1
  StoryModel(
    id: '1', 
    username: 'Jona', 
    profileImagePath: 'assets/profile/prof1.jpg', 
    storyImagePath: 'assets/myday/myday1.jpg', 
    timestamp: DateTime.now().subtract(const Duration(hours: 5)), 
    isViewed: false),

      StoryModel(
    id: '2', 
    username: 'Juan', 
    profileImagePath: 'assets/profile/prof2.jpg', 
    storyImagePath: 'assets/myday/myday2.jpg', 
    timestamp: DateTime.now().subtract(const Duration(hours: 5)), 
    isViewed: false),

      StoryModel(
    id: '3', 
    username: 'Erika', 
    profileImagePath: 'assets/profile/prof3.jpg', 
    storyImagePath: 'assets/myday/myday5.jpg', 
    timestamp: DateTime.now().subtract(const Duration(hours: 5)), 
    isViewed: false),

      StoryModel(
    id: '4', 
    username: 'Rei', 
    profileImagePath: 'assets/profile/prof4.jpg', 
    storyImagePath: 'assets/myday/myday4.jpg', 
    timestamp: DateTime.now().subtract(const Duration(hours: 5)), 
    isViewed: false),

      StoryModel(
    id: '5', 
    username: 'Kryssel', 
    profileImagePath: 'assets/profile/prof5.jpg', 
    storyImagePath: 'assets/myday/myday5.jpg', 
    timestamp: DateTime.now().subtract(const Duration(hours: 5)), 
    isViewed: false),
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Image.asset(
          "assets/icon/logo.png",
          height: 80,
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          DrawerButton(),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CreatePost(),
            StoriesList(stories: stories,
            onStoryTap: (story) {},
            ),
            NewsFeedPost(
              name: "Jona",
              caption: "Enjoying the sunny day at the beach!",
              imageurl: "assets/myday/myday1.jpg"),
        
               NewsFeedPost(
              name: "Juan",
              caption: "Had a great time hiking in the mountains.",
              imageurl: "assets/myday/myday5.jpg",
            ),
            ],
        ),
      ),
    );
  }
}