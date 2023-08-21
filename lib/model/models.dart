
class User{
  String? name;
  int? age;
  String? address;
  String? place;
  User({this.name, this.age, required this.address,required this.place});

  User.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    age = json['age'];
    address = json['address'];
    place = json['place'];
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['age']=this.age;

    data['address']=this.address;

    data['place']=this.place;
    return data;
  }
}