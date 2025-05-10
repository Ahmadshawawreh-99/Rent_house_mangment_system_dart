import 'models/house.dart';
import 'models/apartment.dart';
import 'models/rental_manager.dart';

void main() {
  RentalManager manager = RentalManager();

  manager.addHouse(House(id: 1, address: 'AMMAN, 7th circle', rentPrice: 450.0));
  manager.addHouse(House(id: 2, address: 'IRBID', rentPrice: 350.0));

  manager.addApartment(
    Apartment(
      id: 3,
      address: 'ZARQA',
      rentPrice: 280.0,
      floorNumber: 2,
      isFurnished: true,
    ),
  );

  manager.addApartment(
    Apartment(
      id: 4,
      address: 'KARAK',
      rentPrice: 300.0,
      floorNumber: 4,
      isFurnished: false,
    ),
  );

  manager.listAvailableProperties();

  manager.rentApartment(3);
  manager.rentHouse(2);

  manager.listAvailableProperties();
}
