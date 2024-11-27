import 'package:flutter/material.dart';
import 'package:rent_app/data/models/car.dart';
import 'package:rent_app/presentation/widgets/car_card.dart';
import 'package:rent_app/presentation/widgets/more_card.dart';

class CarDetailsPage extends StatelessWidget {
  const CarDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.info_outline),
            Text(' Information'),
          ],
        ),
      ),
      body: Column(
        children: [
          CarCard(
            car: Car(
              model: 'Audi A4',
              distance: 100,
              fuelCapacity: 50,
              pricePerHour: 100,
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Color(0xFFF3F3F3),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 12,
                          spreadRadius: 5,
                        )
                      ],
                    ),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 40,
                          backgroundImage: AssetImage('assets/user.png'),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Jane Cooper',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '\$4.253',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 20),
                Expanded(
                  child: Container(
                    height: 170,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage('assets/maps.png'),
                        fit: BoxFit.cover,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 12,
                          spreadRadius: 5,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                MoreCard(
                  car: Car(
                    model: 'Audi A4',
                    distance: 100,
                    fuelCapacity: 50,
                    pricePerHour: 100,
                  ),
                ),
                SizedBox(height: 5),
                MoreCard(
                  car: Car(
                    model: 'Audi A4',
                    distance: 100,
                    fuelCapacity: 50,
                    pricePerHour: 100,
                  ),
                ),
                SizedBox(height: 5),
                MoreCard(
                  car: Car(
                    model: 'Audi A4',
                    distance: 100,
                    fuelCapacity: 50,
                    pricePerHour: 100,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
