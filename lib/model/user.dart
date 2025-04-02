class User {
  final String firstName;
  final String lastName;
  final int age;
  final String snaket;

  const User({
    required this.firstName,
    required this.lastName,
    required this.age,
    required this.snaket,
  });

  User copy({
    String? firstName,
    String? lastName,
    int? age,
  }) =>
      User(
        firstName: firstName ?? this.firstName,
        lastName: lastName ?? this.lastName,
        age: age ?? this.age,
        snaket: snaket ?? this.snaket,
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is User &&
          runtimeType == other.runtimeType &&
          firstName == other.firstName &&
          lastName == other.lastName &&
          age == other.age
          &&
          snaket == other.snaket
          ;

  @override
  int get hashCode => firstName.hashCode ^ lastName.hashCode ^ age.hashCode ^ snaket.hashCode ;
}
