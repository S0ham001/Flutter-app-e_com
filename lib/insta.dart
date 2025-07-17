import 'package:flutter/material.dart';

class instaPage extends StatelessWidget {
  const instaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(12),
      elevation: 3,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Profile Header
          ListTile(
            leading: const CircleAvatar(
              backgroundImage: NetworkImage(
                  '#'), // random profile image
            ),
            title: const Text("username", style: TextStyle(fontWeight: FontWeight.bold)),
          ),

          // Post Image
          SizedBox(
            height: 300,
            width: double.infinity,
            child: Image.network(
              '#', // random post image
              fit: BoxFit.cover,
              loadingBuilder: (context, child, loadingProgress) {
                if (loadingProgress == null) return child;
                return const Center(child: CircularProgressIndicator());
              },
            ),
          ),

          // Action Buttons
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
            child: Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.favorite_border),
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(Icons.mode_comment_outlined),
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(Icons.send_outlined),
                  onPressed: () {},
                ),
                const Spacer(),
                IconButton(
                  icon: const Icon(Icons.bookmark_border),
                  onPressed: () {},
                ),
              ],
            ),
          ),

          // Likes
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 14),
            child: Text(
              "1,024 likes",
              // style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),

          // Caption
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 14, vertical: 4),
            child: Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                      text: "username ",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: "Just chilling at the beach 🌊🌴"),
                ],
              ),
            ),
          ),

          // Comments Link
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 14),
            child: Text(
              "View all 120 comments",
S            ),
          ),

          const SizedBox(height: 10),
        ],
      ),
    );
  }
}