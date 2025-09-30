import 'package:flutter/material.dart';

class CreatePost extends StatelessWidget {
  final VoidCallback? onpostcreate;
  const CreatePost({super.key, this.onpostcreate});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage("assets/profile/prof5.jpg"),
      ),
      title: TextField(
        decoration: const InputDecoration(
          hintText: "What's on your mind?",
          border: InputBorder.none
        ),
        onTap: onpostcreate,
      ),
      trailing: const Icon(Icons.image),
    );
  }
}