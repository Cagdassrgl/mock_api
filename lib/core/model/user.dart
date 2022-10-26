class User {
  String? id;
  String? name;
  String? surname;
  String? email;
  String? phone;
  String? avatar;

  User({this.id, this.name, this.surname, this.email, this.phone, this.avatar});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    surname = json['surname'];
    email = json['email'];
    phone = json['phone'];
    avatar = json['avatar'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['surname'] = surname;
    data['email'] = email;
    data['phone'] = phone;
    data['avatar'] = avatar;
    return data;
  }
}
