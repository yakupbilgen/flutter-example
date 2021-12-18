void main() {
  List product = [];
  product[0] = "Laptop";
  product[1] = "Mouse";
  product[2] = "Klavye";
  product[3] = "Monitor";
  product[4] = "Kamera";

  print(product);
  print(product[3]);

  //Growable List

  var country = ["Ankara", "İzmir", "İstanbul"];
  print(country);
  country.add("Siirt");
  print(country);

  var countryFilter = country.where((element) => element.contains("A"));
  print(countryFilter);

  print(country.first);
}
