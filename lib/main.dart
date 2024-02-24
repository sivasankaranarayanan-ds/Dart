import 'package:flutter/material.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Network Connectivity Example'),
        ),
        body: ConnectivityCheck(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ConnectivityCheck extends StatefulWidget {
  @override
  _ConnectivityCheckState createState() => _ConnectivityCheckState();
}

class _ConnectivityCheckState extends State<ConnectivityCheck> {
  Connectivity _connectivity = Connectivity();
  late String _connectionStatus;

  @override
  void initState() {
    super.initState();
    _checkConnectivity();
    _connectivity.onConnectivityChanged.listen((ConnectivityResult result) {
      _updateConnectionStatus(result);
    });
  }

  Future<void> _checkConnectivity() async {
    ConnectivityResult result = await _connectivity.checkConnectivity();
    _updateConnectionStatus(result);
  }

  void _updateConnectionStatus(ConnectivityResult result) {
    switch (result) {
      case ConnectivityResult.wifi:
        setState(() {
          _connectionStatus = 'Connected to WiFi';
        });
        break;
      case ConnectivityResult.mobile:
        setState(() {
          _connectionStatus = 'Connected to Mobile Data';
        });
        break;
      case ConnectivityResult.none:
        setState(() {
          _connectionStatus = 'No Connection';
        });
        break;
      default:
        setState(() {
          _connectionStatus = 'Other Connection: $result';
        });
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Connection Status: $_connectionStatus'),
          ElevatedButton(
            onPressed: _checkConnectivity,
            child: Text('Check Connectivity'),
          ),
        ],
      ),
    );
  }
}
