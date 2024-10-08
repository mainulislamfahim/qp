import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:intl/intl.dart';

class FormatTime {
  static String formatTimestamp(Timestamp? timestamp) {
    if (timestamp == null) {
      return '';
    }

    DateTime date = timestamp.toDate();

    Duration difference = DateTime.now().difference(date);

    if (difference.inDays > 0) {
      String time = DateFormat('dd MMM yyy, h:mm a').format(date);
      return time;
    } else {
      String time = DateFormat('h:mm a').format(date);
      if (difference.inHours > 23) {
        return "Yesterday $time";
      } else {
        return time;
      }
    }
  }

  /// Format Time group By
  static String groupByDate(DateTime? date) {
    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day);
    final yesterday = DateTime(now.year, now.month, now.day - 1);

    if (date == null) return 'Unknown';
    final dateToCheck = DateTime(date.year, date.month, date.day);

    if (dateToCheck == today) {
      return 'Today';
    } else if (dateToCheck == yesterday) {
      return 'Yesterday';
    } else if (now.difference(dateToCheck).inDays < 7) {
      return 'This Week';
    } else {
      return DateFormat('MMMM yyyy').format(date);
    }
  }

  static int groupComparator(String value1, String value2) {
    final priority = {
      'Today': 0,
      'Yesterday': 1,
      'This Week': 2,
    };
    final p1 =
        priority[value1] ?? 3; // Default to 'Older' if not in the priority list
    final p2 = priority[value2] ?? 3;
    return p1.compareTo(p2);
  }

  /// Format Time Ago
  static String formatTimeAgo(DateTime dateTime) {
    final now = DateTime.now();
    final difference = now.difference(dateTime);

    if (difference.inDays > 8) {
      return DateFormat('MMM dd, yyyy').format(dateTime);
    } else if (difference.inDays >= 1) {
      return '${difference.inDays} days ago';
    } else if (difference.inHours >= 1) {
      return '${difference.inHours} hours ago';
    } else if (difference.inMinutes >= 1) {
      return '${difference.inMinutes} minutes ago';
    } else {
      return 'Just now';
    }
  }
}
