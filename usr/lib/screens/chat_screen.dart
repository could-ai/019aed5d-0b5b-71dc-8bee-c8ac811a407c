import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chats'),
        actions: [
          IconButton(
            icon: const Icon(Icons.edit_square),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: 15,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.blueAccent,
              child: Text('U$index', style: const TextStyle(color: Colors.white)),
            ),
            title: Text('Friend $index'),
            subtitle: Text(index % 2 == 0 ? 'Sent a photo.' : 'Hey, how are you?'),
            trailing: Text('${index + 1}m ago'),
            onTap: () {
              // Navigate to individual chat details (placeholder)
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Chat with Friend $index')),
              );
            },
          );
        },
      ),
    );
  }
}
