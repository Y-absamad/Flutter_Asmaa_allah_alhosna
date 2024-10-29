// ignore_for_file: unused_field

import 'package:flutter/material.dart';
import './names_grid_view.dart';
import './names_list_view.dart';
import '../repository.dart';
import '../viewmodel.dart';
import 'app_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isListView = true;

  final NameRepository _repository = NameRepository();

  late NameViewModel _viewModel;

  @override
  void initState() {
    super.initState();
    _viewModel = NameViewModel(_repository);
  }

  void toggleView() {
    setState(() {
      isListView = !isListView;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor : const Color.fromARGB(92, 27, 113, 218),
          appBar: BuildAppBar(isListView: isListView, onToggleView: toggleView,),
          body: isListView
              ? NamesListView(names: _repository.fetchNames())
              : NamesGridView(names: _repository.fetchNames()),
        ),
      ),
    );
  }
}
