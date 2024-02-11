import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux_sample_project/home.dart';
import 'package:redux_sample_project/models/app_state.dart';
import 'package:redux/redux.dart';
import 'package:redux_sample_project/redux/reducers.dart';
import 'package:redux_sample_project/settings.dart';

void main() {
  final _initialState = AppState(sliderFontSize: 0.5);
  final Store<AppState> _store =
      Store<AppState>(reducer, initialState: _initialState);
  runApp(MyApp(store: _store));
}

class MyApp extends StatelessWidget {
  final Store<AppState> store;
  MyApp({required this.store, super.key});
  @override
  Widget build(BuildContext context) {
    return StoreProvider(
      store: store,
      child: MaterialApp(title: 'Flutter Demo', initialRoute: '/', routes: {
        '/': (context) => HomeWidget(text: lorem(paragraphs: 4, words: 100)),
        '/settings': (context) => SettingsWidget()
      }),
    );
  }
}
