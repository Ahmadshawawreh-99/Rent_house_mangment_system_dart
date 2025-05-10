import 'house.dart';
import 'apartment.dart';

class RentalManager {
  List<House> houses = [];
  List<Apartment> apartments = [];

  void addHouse(House house) {
    houses.add(house);
    print('House added: ${house.address}');
  }

  void addApartment(Apartment apartment) {
    apartments.add(apartment);
    print('Apartment added: ${apartment.address}');
  }

  void listAvailableProperties() {
    print('\nAvailable Houses:');
    for (var house in houses) {
      if (!house.isRented) {
        house.displayInfo();
      }
    }

    print('\nAvailable Apartments:');
    for (var apt in apartments) {
      if (!apt.isRented) {
        apt.displayInfo();
      }
    }
  }

  bool rentHouse(int id) {
    for (var house in houses) {
      if (house.id == id && !house.isRented) {
        house.isRented = true;
        print('House with ID $id rented successfully.');
        return true;
      }
    }
    print('House with ID $id not found or already rented.');
    return false;
  }

  bool rentApartment(int id) {
    for (var apt in apartments) {
      if (apt.id == id && !apt.isRented) {
        apt.isRented = true;
        print('Apartment with ID $id rented successfully.');
        return true;
      }
    }
    print('Apartment with ID $id not found or already rented.');
    return false;
  }
}
