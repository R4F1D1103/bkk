import 'package:flutter/foundation.dart';

class BookmarkProvider extends ChangeNotifier {
  List<Map<String, String>> _bookmarkedJobs = [];

  List<Map<String, String>> get bookmarkedJobs => _bookmarkedJobs;

  bool isBookmarked(Map<String, String> job) {
    print('Checking if job is bookmarked: ${job['id']}');
    print('Bookmarked jobs: $_bookmarkedJobs');
    return _bookmarkedJobs.any((element) => element['id'] == job['id']);
  }

  void addBookmark(Map<String, String> job) {
    print('Adding job to bookmarks: ${job['id']}');
    _bookmarkedJobs.add(job);
    notifyListeners();
  }

  void removeBookmark(Map<String, String> job) {
    print('Removing job from bookmarks: ${job['id']}');
    _bookmarkedJobs.removeWhere((element) => element['id'] == job['id']);
    notifyListeners();
  }

}
