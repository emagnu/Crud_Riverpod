//  Import LIBRARIES FILES PARTS PROVIDERS
//
//  Import LIBRARIES
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

//  Import FILES
//  Import PARTS
//  PROVIDER
final numbersProvider =
    StateNotifierProvider<NumberNotifier, List<String>>((ref) {
  return NumberNotifier();
});
//

class NumberNotifier extends StateNotifier<List<String>> {
  NumberNotifier() : super(['number 12', 'number 30', 'number 8']);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class HomePage extends ConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final numbers = ref.watch(numbersProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('CRUD with Riverpod on Steroids!'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      body: Center(
        child: Column(
          // children: const <Widget>[],
          children: numbers.map((e) => Text(e)).toList(),
        ),
      ),
    );
  }
}
