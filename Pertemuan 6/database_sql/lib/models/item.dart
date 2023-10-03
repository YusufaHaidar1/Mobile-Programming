class Item{
  late int? id;
  late String _name;
  late int _price;

get getId => this.id;

String get name => this._name;
set name(String value) => this._name = value;

int get price => this._price;
set price(int value) => this._price = value;

//Konstruktor 1 (Set nilai nama dan harga)
  Item(this._name, this._price);

//Konstruktor 2 (Konversi data SQL yang berbentuk Map ke Item)
  Item.fromMap(Map<String, dynamic> map) {
    this.id = map['id'];
    this._name = map['name'];
    this._price = map['price'];
  }

//Konstruktor 3 (Konversi hasil Item kedalam Map)
  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = Map<String, dynamic>();
    map['id'] = this.id;
    map['name'] = name;
    map['price'] = price;
  return map;
  }
}