import 'models/house.dart';
import 'models/apartment.dart';
import 'models/rental_manager.dart';

void main() {
  RentalManager manager = RentalManager();

  // إضافة منازل
  manager.addHouse(House(id: 1, address: 'Amman, Gardens', rentPrice: 450.0));
  manager.addHouse(House(id: 2, address: 'Irbid, Al-Naseem', rentPrice: 350.0));

  // إضافة شقق
  manager.addApartment(Apartment(
    id: 3,
    address: 'Zarqa, Downtown',
    rentPrice: 280.0,
    floorNumber: 2,
    isFurnished: true,
  ));

  manager.addApartment(Apartment(
    id: 4,
    address: 'Madaba, East Side',
    rentPrice: 300.0,
    floorNumber: 4,
    isFurnished: false,
  ));

  // عرض العقارات المتاحة
  manager.listAvailableProperties();

  // تجربة التأجير
  manager.rentApartment(3);
  manager.rentHouse(2);

  // عرض العقارات بعد التأجير
  manager.listAvailableProperties();
}
