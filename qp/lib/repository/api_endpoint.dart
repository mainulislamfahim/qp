class ApiEndpoint {
  ///  Base URL
  // static const String domailUrl = 'https://quantumpossibilities.eu:82'; //  192.168.198.83
  static const String baseUrl = 'https://quantumpossibilities.eu:82';

  ///  Auth
  static const String register = '$baseUrl/api/signup'; // post
  static const String login = '$baseUrl/api/login'; // post

  /// Post
  static const String post = '$baseUrl/api/get-all-users-posts'; // Post

  /// Gender
  static const String gender = '$baseUrl/api/gender'; // Post
}
