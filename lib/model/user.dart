class User {
  String? id;
  String? name;
  String? email;
  String? phone;
  String? address;
  String? credit;

  User(
      {required this.id,
      required this.name,
      required this.email,
      required this.phone,
      required this.address,
      required this.credit});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    phone = json['phone'];
    address = json['address'];
    credit = json['credit'];
  }
}
