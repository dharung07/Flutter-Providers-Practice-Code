import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_practicse/numbers_provider.dart';
import 'package:provider_practicse/second_page.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

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
              Expanded(
                child: ListView.builder(
                  itemCount: numberProvider.numbersList.length,
                  itemBuilder: (context, index) {
                    return Text(
                      numberProvider.numbersList[index].toString(),
                      style: const TextStyle(fontSize: 22),
                    );
                  },
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const SecondPage()));
                },
                child: const Text('Next page'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
