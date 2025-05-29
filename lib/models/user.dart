// class User {
//   final String id;
//   final String name;
//   final String avatar;
//   final String createdAt;
//   const User({
//     required this.avatar,
//     required this.id,
//     required this.name,
//     required this.createdAt,
//   });
//   factory User.fromJson(Map<String, dynamic> json) {
//     return User(
//       avatar: json['avatar'] ?? '',
//       id: json['id'] ?? '1',
//       name: json['name'] ?? 'No name',
//       createdAt: json['createdAt'] != null
//           ? DateTime.parse(json['createdAt'])
//           : DateTime.now(),
//     );
//   }
// }
