import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'bookmark_provider.dart'; // Import BookmarkProvider

class BookmarkScreen extends StatelessWidget {
  const BookmarkScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bookmarks = Provider.of<BookmarkProvider>(context).bookmarkedJobs;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Bookmarks'),
        centerTitle: true,
      ),
      body: bookmarks.isEmpty
          ? const Center(
        child: Text(
          'No bookmarks yet',
          style: TextStyle(fontSize: 18),
        ),
      )
          : ListView.builder(
        itemCount: bookmarks.length,
        itemBuilder: (context, index) {
          final job = bookmarks[index];
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    job['title']!,
                    style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(job['company']!),
                  Text(job['location']!),
                  const SizedBox(height: 8),
                  ElevatedButton(
                    onPressed: () {
                      Provider.of<BookmarkProvider>(context, listen: false)
                          .removeBookmark(job);
                    },
                    child: const Text('Remove Bookmark'),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
