class UserModel {
  late String id;
  late String fullname;
  late String email;
  UserModel({
    required this.id,
    required this.fullname,
    required this.email,
  });
  //Map to Object
  UserModel.fromMap(Map<String, dynamic> map) {
    this.id = map['id'];
    this.fullname = map['fullname'];
    this.email = map['email'];
  }
  //Object to Map
  Map<String, dynamic> toMap() {
    return {
      'id': this.id,
      'fullname': this.fullname,
      'email': this.email,
    };
  }
}
