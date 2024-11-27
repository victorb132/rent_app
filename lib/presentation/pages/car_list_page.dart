import 'package:flutter/material.dart';
import 'package:rent_app/data/models/car.dart';
import 'package:rent_app/presentation/widgets/car_card.dart';

class CarListPage extends StatelessWidget {
  CarListPage({super.key});

  final List<Car> cars = [
    Car(
      model: 'Audi A4',
      distance: 100,
      fuelCapacity: 50,
      pricePerHour: 100,
    ),
    Car(
      model: 'BMW X5',
      distance: 200,
      fuelCapacity: 70,
      pricePerHour: 150,
    ),
    Car(
      model: 'Mercedes Benz C-Class',
      distance: 150,
      fuelCapacity: 60,
      pricePerHour: 120,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Choose your Car'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: ListView.builder(
        itemCount: cars.length,
        itemBuilder: (context, index) {
          return CarCard(car: cars[index]);
        },
      ),
    );
  }
}
