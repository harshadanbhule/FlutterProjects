class Employee {
  final int loginId;
  final String email;
  final String username;
  List<String> skills;

  Employee(
      {required this.email,
      required this.username,
      required this.loginId,
      required this.skills});
}
