import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rent_app/presentation/bloc/car_bloc.dart';
import 'package:rent_app/presentation/bloc/car_event.dart';
import 'package:rent_app/presentation/bloc/car_state.dart';
import 'package:rent_app/presentation/widgets/car_card.dart';

class CarListPage extends StatelessWidget {
  const CarListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Choose your Car'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: BlocBuilder<CarBloc, CarState>(
        builder: (context, state) {
          if (state is CarsLoading) {
            return Center(child: CircularProgressIndicator());
          }

          if (state is CarsLoaded) {
            return RefreshIndicator(
              onRefresh: () async {
                context.read<CarBloc>().add(LoadCars());
              },
              child: ListView.builder(
                itemCount: state.cars.length,
                itemBuilder: (context, index) {
                  return CarCard(car: state.cars[index]);
                },
              ),
            );
          }

          if (state is CarsError) {
            return Center(child: Text(state.message));
          }

          return Container();
        },
      ),
    );
  }
}
