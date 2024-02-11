import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux_sample_project/drawer.dart';
import 'package:redux_sample_project/models/app_state.dart';

class HomeWidget extends StatelessWidget {
  HomeWidget({required this.text, super.key});
  String text = lorem(paragraphs: 4, words: 100);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Redux State Management."),
        backgroundColor: Colors.teal,
      ),
      drawer: const NavBarWidget(),
      body: Container(
          margin: const EdgeInsets.all(10),
          child: StoreConnector<AppState, AppState>(
            converter: (store) => store.state,
            builder: (context, state) {
              return RichText(
                text: TextSpan(
                    text: text,
                    style: TextStyle(
                        fontSize: state.viewFontSize,
                        color: Colors.black,
                        fontWeight:
                            state.bold! ? FontWeight.bold : FontWeight.normal,
                        fontStyle: state.italic!
                            ? FontStyle.italic
                            : FontStyle.normal)),
              );
            },
          )),
    );
  }
}
