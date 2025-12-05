import 'package:flutter/material.dart';

class ReelsScreen extends StatelessWidget {
  final VoidCallback? onHomePressed;

  const ReelsScreen({super.key, this.onHomePressed});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text('Reels', style: TextStyle(fontWeight: FontWeight.bold)),
      ),
      body: Stack(
        children: [
          // Background video placeholder
          Container(
            color: Colors.black,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.play_circle_outline, size: 80, color: Colors.white.withOpacity(0.8)),
                  const SizedBox(height: 20),
                  const Text('Reel Video Placeholder', style: TextStyle(color: Colors.white)),
                ],
              ),
            ),
          ),
          
          // Right side actions
          Positioned(
            right: 16,
            bottom: 100,
            child: Column(
              children: [
                _buildAction(Icons.favorite_border, '12k'),
                const SizedBox(height: 20),
                _buildAction(Icons.chat_bubble_outline, '543'),
                const SizedBox(height: 20),
                _buildAction(Icons.send, 'Share'),
                const SizedBox(height: 20),
                _buildAction(Icons.more_horiz, ''),
              ],
            ),
          ),

          // Bottom info
          const Positioned(
            left: 16,
            bottom: 40,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CircleAvatar(radius: 16, backgroundColor: Colors.white),
                    SizedBox(width: 8),
                    Text('username_official', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                    SizedBox(width: 8),
                    Icon(Icons.verified, color: Colors.blue, size: 16),
                  ],
                ),
                SizedBox(height: 8),
                Text('This is a cool reel description... #viral', style: TextStyle(color: Colors.white)),
                SizedBox(height: 8),
                Row(
                  children: [
                    Icon(Icons.music_note, color: Colors.white, size: 16),
                    SizedBox(width: 4),
                    Text('Original Audio - username', style: TextStyle(color: Colors.white)),
                  ],
                ),
              ],
            ),
          ),

          // Requested Buttons: Post and Home
          Positioned(
            top: 50,
            right: 16,
            child: Column(
              children: [
                FloatingActionButton.small(
                  heroTag: 'post_reel',
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Create New Reel')),
                    );
                  },
                  backgroundColor: Colors.pink,
                  child: const Icon(Icons.add, color: Colors.white),
                ),
                const SizedBox(height: 8),
                const Text('Post', style: TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.bold)),
                
                const SizedBox(height: 16),
                
                FloatingActionButton.small(
                  heroTag: 'home_reel',
                  onPressed: onHomePressed,
                  backgroundColor: Colors.white,
                  child: const Icon(Icons.home, color: Colors.black),
                ),
                const SizedBox(height: 8),
                const Text('Home', style: TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.bold)),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAction(IconData icon, String label) {
    return Column(
      children: [
        Icon(icon, color: Colors.white, size: 30),
        if (label.isNotEmpty) ...[
          const SizedBox(height: 4),
          Text(label, style: const TextStyle(color: Colors.white, fontSize: 12)),
        ],
      ],
    );
  }
}
