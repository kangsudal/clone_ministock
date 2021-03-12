import 'package:flutter/material.dart';
import 'package:myministock/widget/gaugechart_widget.dart';
import 'package:myministock/widget/stackedfillcolorbarchart.dart';
import 'package:myministock/widget/stackedtargetline_widget.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  int touchedIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly, //상하 가운데정렬
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Stack(
                children: [
                  StackedFillColorBarChart.withSampleData(),
                  // StackedBarTargetLineChart.withSampleData(),
                  // GaugeChart.withSampleData(),
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("총 자산"),
                        Text(
                          '$_counter',
                          style: Theme.of(context).textTheme.headline4,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.teal,
                ),
                child: Column(
                  children: [
                    Text("주식주문내역"),
                    Text(
                      '$_counter',
                      style: Theme.of(context).textTheme.headline4,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text("구매접수           없음>"),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.lightBlue,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("주식"),
                    Text(
                      '$_counter원',
                      style: Theme.of(context).textTheme.headline4,
                    ),
                    Text(
                      '$_counter원($_counter%)',
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          child: Text("보유 주식"),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text("실현손익"),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text("배당내역"),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.deepPurpleAccent,
                ),
                child: Column(
                  children: [
                    Text("주문가능 금액"),
                    Text(
                      '$_counter원',
                      style: Theme.of(context).textTheme.headline4,
                    ),
                    Text(
                      '출금가능 금액 $_counter원',
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          child: Text("이체"),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text("거래내역"),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
