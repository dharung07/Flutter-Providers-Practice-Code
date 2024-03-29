import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_practicse/numbers_provider.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<NumberProvider>(
      builder: (context, numberProvider, child) => Scaffold(
        floatingActionButton: IconButton(
          onPressed: () {
            numberProvider.addNumber();
          },
          icon: const Icon(Icons.add),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Center(
                child: Text(
                  numberProvider.numbersList.last.toString(),
                  style: const TextStyle(fontSize: 22),
                ),
              ),
              SizedBox(
                width: double.maxFinite,
                height: 100,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: numberProvider.numbersList.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        numberProvider.numbersList[index].toString(),
                        style: const TextStyle(fontSize: 22),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
