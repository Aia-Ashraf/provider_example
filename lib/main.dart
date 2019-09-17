import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/AppState.dart';
import 'package:provider_example/ChangeColorBtn.dart';
import 'package:provider_example/TextDisplay.dart';
import 'package:provider_example/TextEditWidget.dart';

void main() => runApp(MyProviderDemo());

class MyProviderDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Provider Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: ChangeNotifierProvider<AppState>(
          builder: (_) => AppState(),
          child: MyHomePage(),
        ));
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController _textEditingController = TextEditingController();

  String _displayText = "";

  void setDisplayText(String text) {
    _displayText = text;
  }

  String get getDisplayText => _displayText;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              /* Text(getDisplayText+('Aia'),style: TextStyle(color: Colors.amber),),
              TextField(
                controller: _textEditingController,
                onChanged: (changed) => setDisplayText(changed),
                onSubmitted: (submited) => setDisplayText(submited),
              )*/
              TextDisplay(),
              TextEditWidget(),
              ChangeColorBtn(),
            ],
          ),
        ),
      ),
    );
  }
}
