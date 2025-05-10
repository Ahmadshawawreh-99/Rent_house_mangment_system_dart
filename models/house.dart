class House {
  int id;
  String address;
  double rentPrice;
  bool isRented;

  House({
    required this.id,
    required this.address,
    required this.rentPrice,
    this.isRented = false,
  });

  void displayInfo() {
    print('[House] ID: $id | Address: $address | Rent: \$${rentPrice.toStringAsFixed(2)} | Rented: ${isRented ? "Yes" : "No"}');
  }
}
