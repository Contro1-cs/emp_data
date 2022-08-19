class User {

  String id;
  final String name;
  final String role;
  final String days;

  User({
   this.id='',
    required this.name,
    required this.role,
    required this.days,
});

  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'role': role,
    'days': days,
  };

  static User fromJson(Map<String, dynamic> json) => User (
    id: json['id'],
    name: json['name'],
    role:  json['role'],
    days: json['days'],

  );

}