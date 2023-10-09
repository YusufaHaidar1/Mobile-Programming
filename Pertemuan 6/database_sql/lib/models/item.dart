class Item{
  late int? id;
  late String _name;
  late int _price;
  late String _kodebarang;
  late int _stok;

get getId => this.id;

String get name => this._name;
set name(String value) => this._name = value;

int get price => this._price;
set price(int value) => this._price = value;

String get kodebarang => this._kodebarang;
set kodebarang(String kodebarang) => this._kodebarang = kodebarang;

int get stok => this._stok;
set stok(int stok) => this._stok = stok;

//Konstruktor 1 (Set nilai nama, harga, kodebarang, dan stok)
  Item(this._name, this._price, this._kodebarang, this._stok);

//Konstruktor 2 (Konversi data SQL yang berbentuk Map ke Item)
  Item.fromMap(Map<String, dynamic> map) {
    this.id = map['id'];
    this._kodebarang = map['kodebarang'];
    this._name = map['name'];
    this._price = map['price'];
    this._stok = map['stok'];
  }

//Konstruktor 3 (Konversi hasil Item kedalam Map)
  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = Map<String, dynamic>();
    map['id'] = this.id;
    map['kodebarang'] = kodebarang;
    map['name'] = name;
    map['price'] = price;
    map['stok'] = stok;
  return map;
  }
}