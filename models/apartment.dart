class Apartment {
  int id;
  String address;
  double rentPrice;
  int floorNumber;
  bool isFurnished;
  bool isRented;

  Apartment({
    required this.id,
    required this.address,
    required this.rentPrice,
    required this.floorNumber,
    required this.isFurnished,
    this.isRented = false,
  });

  void displayInfo() {
    print(
      '[Apartment] ID: $id | Address: $address | Rent: ${rentPrice} | '
      'Floor: $floorNumber | Furnished: ${isFurnished ? "Yes" : "No"} | Rented: ${isRented ? "Yes" : "No"}',
    );
  }
}
