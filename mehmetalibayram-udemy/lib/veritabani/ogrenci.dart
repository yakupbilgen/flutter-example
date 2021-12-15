class Ogrenci {
  int no;
  String _isim;
  String _soyisim;
  String _sinif;

  Ogrenci(this._isim, this._soyisim, this._sinif);

  Ogrenci.map(dynamic nesne) {
    this._isim = nesne["isim"];
    this._soyisim = nesne["soyisim"];
    this._sinif = nesne["sinif"];
  }

  String get isim => _isim;
  String get soyisim => _soyisim;
  String get sinif => _sinif;

  Map<String, dynamic> toMap() {
    var map = Map<String, dynamic>();
    map["isim"] = _isim;
    map["soyisim"] = _soyisim;
    map["sinif"] = _sinif;

    return map;
  }

  void numaraVer(int no) {
    this.no = no;
  }
}
