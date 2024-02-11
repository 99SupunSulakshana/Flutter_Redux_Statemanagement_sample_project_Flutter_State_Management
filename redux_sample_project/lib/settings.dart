import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux_sample_project/drawer.dart';
import 'package:redux_sample_project/models/app_state.dart';
import 'package:redux_sample_project/redux/actions.dart';

class SettingsWidget extends StatelessWidget {
  const SettingsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text('Settings')
      ),
      drawer: const NavBarWidget(),
      body: StoreConnector<AppState, AppState>(
         converter: (store) => store.state,
         builder: (context, state){
            return Column(
          children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 18, top: 18),
                child: Text(
                  'Font Size : ${state.viewFontSize.toInt()}'
                ),
                ),
                Slider(
                  min: 0.4,
                  value: state.sliderFontSize!, 
                  onChanged: (newValue){
                    StoreProvider.of<AppState>(context).dispatch(FontSize(newValue));
                  }
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 8),
                    child: Row(
                      children: [
                        Checkbox(
                          value: state.bold, 
                          onChanged: (val){
                            StoreProvider.of<AppState>(context).dispatch(Bold(val!));
                          }),
                          Text('Bold',style: getStyle(state.bold!, false))
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 8),
                    child: Row(
                      children: [
                        Checkbox(
                          value: state.italic, 
                          onChanged: (val){
                            StoreProvider.of<AppState>(context).dispatch(Italic(val!));
                          }),
                          Text('Bold',style: getStyle(false, state.italic!))
                      ],
                    ),
                  )
          ],
          );
         },
        )
    );
  }
}

TextStyle getStyle([bool isBold = false, bool isItalic = false]){
  return TextStyle(
    fontSize: 18,
    fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
    fontStyle: isItalic ? FontStyle.italic : FontStyle.normal
  );
}