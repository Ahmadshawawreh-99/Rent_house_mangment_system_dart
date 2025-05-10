# Rental Property Management Documentation

This documentation provides an overview of the key components involved in the rental property management application, including the `Apartment`, `House`, `RentalManager` classes, and the main application entry point.

---

## Apartment Model

### Overview

The `Apartment` class represents an apartment entity with its associated properties and behaviors.

### Class Definition: `Apartment`

#### Properties

* `int id`: A unique identifier for the apartment.
* `String address`: The physical address of the apartment.
* `double rentPrice`: The monthly rent price for the apartment.
* `int floorNumber`: The floor on which the apartment is located.
* `bool isFurnished`: Indicates whether the apartment is furnished (`true`) or not (`false`).
* `bool isRented`: Indicates whether the apartment is currently rented. Defaults to `false` if not specified.

#### Constructor

```dart
Apartment({
  required this.id,
  required this.address,
  required this.rentPrice,
  required this.floorNumber,
  required this.isFurnished,
  this.isRented = false,
});
```

#### Method: `displayInfo()`

Prints the details of the apartment in a readable format.

**Example Usage:**

```dart
Apartment myApartment = Apartment(
  id: 1,
  address: "123 Main St",
  rentPrice: 1200.50,
  floorNumber: 3,
  isFurnished: true,
);
myApartment.displayInfo();
// Output: [Apartment] ID: 1 | Address: 123 Main St | Rent: $1200.50 | Floor: 3 | Furnished: Yes | Rented: No
```

---

## House Model

### Overview

The `House` class represents a real estate property with attributes such as ID, address, rent price, and rental status.

### Class Definition: `House`

#### Properties

* `int id`: A unique identifier for the house.
* `String address`: The physical address of the house.
* `double rentPrice`: The monthly rental price.
* `bool isRented`: Indicates whether the house is currently rented. Defaults to `false`.

#### Constructor

```dart
House({
  required this.id,
  required this.address,
  required this.rentPrice,
  this.isRented = false,
});
```

#### Method: `displayInfo()`

Prints the details of the house in a readable format.

**Implementation:**

```dart
void displayInfo() {
  print('[House] ID: \$id | Address: \$address | Rent: \$\${rentPrice.toStringAsFixed(2)} | Rented: \${isRented ? "Yes" : "No"}');
}
```

**Example Usage:**

```dart
void main() {
  House myHouse = House(id: 1, address: "123 Sunny St", rentPrice: 1500.00);
  myHouse.displayInfo();
}
// Output: [House] ID: 1 | Address: 123 Sunny St | Rent: $1500.00 | Rented: No
```

---

## Rental Manager

### Overview

The `RentalManager` class manages collections of rental properties, allowing users to add, list, and rent out houses and apartments.

### Class Definition: `RentalManager`

#### Properties

* `List<House> houses`: List of houses managed.
* `List<Apartment> apartments`: List of apartments managed.

#### Methods

* `addHouse(House house)`: Adds a new house to the list.

  ```dart
  rentalManager.addHouse(House(...));
  ```
* `addApartment(Apartment apartment)`: Adds a new apartment to the list.

  ```dart
  rentalManager.addApartment(Apartment(...));
  ```
* `listAvailableProperties()`: Lists all available (not rented) houses and apartments.

  ```dart
  rentalManager.listAvailableProperties();
  ```
* `rentHouse(int id) -> bool`: Rents a house by ID if available. Returns `true` if successful.

  ```dart
  rentalManager.rentHouse(1);
  ```
* `rentApartment(int id) -> bool`: Rents an apartment by ID if available. Returns `true` if successful.

  ```dart
  rentalManager.rentApartment(1);
  ```

---

## Main Dart File

### Overview

The `main.dart` file initializes the application, adds sample properties, and demonstrates listing and renting properties.

### Key Components

#### 1. Imports

```dart
import 'models/house.dart';
import 'models/apartment.dart';
import 'models/rental_manager.dart';
```

#### 2. Main Function Flow

**Initialization:**

```dart
RentalManager manager = RentalManager();
```

**Adding Houses:**

```dart
manager.addHouse(House(id: 1, address: 'Amman, Gardens', rentPrice: 450.0));
manager.addHouse(House(id: 2, address: 'Irbid, Al-Naseem', rentPrice: 350.0));
```

**Adding Apartments:**

```dart
manager.addApartment(Apartment(
  id: 3,
  address: 'Zarqa, Downtown',
  rentPrice: 280.0,
  floorNumber: 2,
  isFurnished: true,
));
```

**Listing Properties:**

```dart
manager.listAvailableProperties();
```

**Renting Properties:**

```dart
manager.rentApartment(3);
manager.rentHouse(2);
```

**Final Listing:**

```dart
manager.listAvailableProperties();
```

---

## Conclusion

This documentation outlines the structure and usage of a simple rental property management system written in Dart. It demonstrates the creation and handling of rental units through a clean, object-oriented approach.

Happy coding! 🎉
