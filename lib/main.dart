import 'package:flutter/material.dart';
import 'package:grpc_demo/client.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'gRPC Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'gRPC Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late final client = PingPongClient();
  String? response;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            response != null
                ? Text(
                    response!,
                    style: Theme.of(context).textTheme.headline4,
                  )
                : Container(),
            ElevatedButton(
              onPressed: () async {
                response = await client.ping();
                setState(() {});
              },
              child: const Text('Send Hello'),
            ),
          ],
        ),
      ),
    );
  }
}
