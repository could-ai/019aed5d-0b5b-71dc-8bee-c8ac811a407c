import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LIVE', style: TextStyle(fontWeight: FontWeight.bold, fontStyle: FontStyle.italic)),
        actions: [
          IconButton(
            icon: const Icon(Icons.favorite_border),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.send),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.grey[300],
                    child: Icon(Icons.person, color: Colors.grey[600]),
                  ),
                  title: Text('User $index'),
                  subtitle: const Text('2 hours ago'),
                  trailing: const Icon(Icons.more_vert),
                ),
                Container(
                  height: 300,
                  color: Colors.grey[800],
                  child: const Center(
                    child: Icon(Icons.image, size: 100, color: Colors.white24),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    children: [
                      const Icon(Icons.favorite_border),
                      const SizedBox(width: 16),
                      const Icon(Icons.chat_bubble_outline),
                      const SizedBox(width: 16),
                      const Icon(Icons.send),
                      const Spacer(),
                      const Icon(Icons.bookmark_border),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('1,234 likes', style: TextStyle(fontWeight: FontWeight.bold)),
                      const SizedBox(height: 4),
                      Text('User $index This is a caption for the post. #live #social'),
                      const SizedBox(height: 8),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
