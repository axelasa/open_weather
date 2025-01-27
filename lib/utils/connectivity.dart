import 'package:flutter/material.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:url_launcher/url_launcher.dart';

class NetworkSettingsPage extends StatefulWidget {
  @override
  _NetworkSettingsPageState createState() => _NetworkSettingsPageState();
}

class _NetworkSettingsPageState extends State<NetworkSettingsPage> {
  bool isConnected = true;

  @override
  void initState() {
    super.initState();
    checkInternetConnection();
  }

  // Check internet connectivity
  Future<void> checkInternetConnection() async {
    var connectivityResult = await Connectivity().checkConnectivity();
    setState(() {
      isConnected = connectivityResult != ConnectivityResult.none;
    });
  }

  // Open Wi-Fi or data settings
  Future<void> openSettings() async {
    try {
      if (Theme.of(context).platform == TargetPlatform.android) {
        // Open Android Wi-Fi settings
        const String wifiSettings = 'android.settings.WIFI_SETTINGS';
        await launchUrl(Uri(scheme: 'android-app', host: wifiSettings));
      } else if (Theme.of(context).platform == TargetPlatform.iOS) {
        // Open iOS Wi-Fi settings
        const String iosSettings = 'App-Prefs:WIFI';
        await launchUrl(Uri.parse(iosSettings));
      }
    } catch (e) {
      print('Error opening settings: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Network Settings'),
      ),
      body: Center(
        child: isConnected
            ? Text(
          'You are connected to the internet!',
          style: TextStyle(color: Colors.green, fontSize: 18),
        )
            : Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'No internet connection!',
              style: TextStyle(color: Colors.red, fontSize: 18),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: openSettings,
              child: Text('Open Wi-Fi Settings'),
            ),
          ],
        ),
      ),
    );
  }
}
