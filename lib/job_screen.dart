import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'bookmark_provider.dart'; // Provider Bookmark

class JobScreen extends StatelessWidget {
  const JobScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BKK SMKN 19 JAKARTA'),
        centerTitle: true,
        leading: PopupMenuButton<int>(
          icon: const Icon(Icons.menu),
          onSelected: (item) => _onMenuSelected(context, item),
          itemBuilder: (context) => [
            const PopupMenuItem<int>(
              value: 0,
              child: Text('Bookmark'),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search Jobs',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Colors.grey[200],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Start Your Job!',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                _buildJobCard(context, '1', 'UI/UX Designer', 'PT. UTY YOGYAKARTA', 'Jakarta'),
                _buildJobCard(context, '2', 'Backend Developer', 'PT. ABC', 'Bandung'),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0, // Halaman Job, indeks 0
        onTap: (index) {
          if (index == 0) {
            Navigator.pushNamed(context, '/job'); // JobScreen
          } else if (index == 1) {
            Navigator.pushNamed(context, '/alumni'); // AlumniScreen
          } else if (index == 2) {
            Navigator.pushNamed(context, '/profile'); // ProfileScreen
          }
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.work), label: 'Job'),
          BottomNavigationBarItem(icon: Icon(Icons.school), label: 'Alumni'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }

  Widget _buildJobCard(BuildContext context, String id, String title, String company, String location) {
    final job = {'id': id, 'title': title, 'company': company, 'location': location};

    return Consumer<BookmarkProvider>(
      builder: (context, bookmarkProvider, child) {
        bool isBookmarked = bookmarkProvider.isBookmarked(job);

        return GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, '/insideJob');
          },
          child: Card(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            title,
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(company),
                          Text(location),
                        ],
                      ),
                      IconButton(
                        icon: Icon(
                          isBookmarked ? Icons.bookmark : Icons.bookmark_border,
                          color: isBookmarked ? Colors.blue : Colors.grey,
                        ),
                        onPressed: () {
                          print(isBookmarked);
                          if (isBookmarked) {
                            bookmarkProvider.removeBookmark(job);
                          } else {
                            bookmarkProvider.addBookmark(job);
                          }
                        },
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Persyaratan Teknis:',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const Text('• Experienced in mobile & Web Design'),
                  const Text('• Proficient in UI/UX Software (Adobe suite, Figma, etc)'),
                  const Text('• Detail-oriented, resourceful and is kept abreast of the...'),
                  const SizedBox(height: 8),
                  const Text('6 hari yang lalu'),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  void _onMenuSelected(BuildContext context, int item) {
    switch (item) {
      case 0:
      // Arahkan ke halaman bookmark
        Navigator.pushNamed(context, '/bookmark');
        break;
    }
  }
}
