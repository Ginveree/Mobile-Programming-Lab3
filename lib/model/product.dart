class Product {
  String? prid;
  String? prmodel;
  String? prprice;
  String? prstockleft;
  String? prfuel;
  String? prcolour;

  Product(
      {required this.prid,
      required this.prmodel,
      required this.prprice,
      required this.prstockleft,
      required this.prfuel,
      required this.prcolour});

  Product.fromJson(Map<String, dynamic> json) {
    prid = json['ID'];
    prmodel = json['Model'];
    prprice = json['Price'];
    prstockleft = json['StockLeft'];
    prfuel = json['Fuel'];
    prcolour = json['Colour'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['ID'] = prid;
    data['Model'] = prmodel;
    data['Price'] = prprice;
    data['Stockleft'] = prstockleft;
    data['Fuel'] = prfuel;
    data['Colour'] = prcolour;
    return data;
  }
}
