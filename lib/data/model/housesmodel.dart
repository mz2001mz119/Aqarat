class HouseModel {
  final int id;
  final String name;
  final String sellingstate;
  final String rentper;
  final int area;
  final int numofrooms;
  final int price;
  final String information;

  HouseModel({
    required this.id,
    required this.name,
    required this.sellingstate,
    required this.rentper,
    required this.area,
    required this.numofrooms,
    required this.price,
    required this.information,
  });

  factory HouseModel.fromJson(Map<String, dynamic> json) {
    return HouseModel(
      id: json['ID'],
      name: json['Name'],
      sellingstate: json['SellingState'],
      rentper: json['RentPer'],
      area: json['Area'],
      numofrooms: json['NumOfRooms'],
      price: json['Price'],
      information: json['Information'],
    );
  }
}
