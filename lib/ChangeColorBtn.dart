import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'AppState.dart';


class ChangeColorBtn extends StatelessWidget {


  //stateless or statefull widget
  // without setState(
  @override
  Widget build(BuildContext context) {
    final checkedState = Provider.of<AppState>(context);

    return Container(
        child: Checkbox(
          onChanged: (t) =>
              checkedState.setCheck(t),
//          setState(s {
//            isChecked =! isChecked;
//          }),
          value: checkedState.getCheck,
        ));
  }
}

/*class _ChangeColorBtnState extends State<ChangeColorBtn> {
  bool isChecked =true ;

  @override
  Widget build(BuildContext context) {
    final checkedState = Provider.of<CheckedState>(context);
    return Container(
        child: Checkbox(
          onChanged: (t) =>
          checkedState.setCheck(t),
//          setState(s {
//            isChecked =! isChecked;
//          }),
          value: checkedState.getCheck,
        ));
  }
}*/
