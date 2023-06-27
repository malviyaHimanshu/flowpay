import 'package:flowpay/components/show_webview.dart';
import 'package:flutter/material.dart';
import 'package:magic_sdk/magic_sdk.dart';
import 'sample.dart';
import 'components/wallet_connect.dart';
import 'components/loginpage.dart';
void main() {
  runApp(const MyApp());
  Magic.instance = Magic("pk_live_0A04869131EC9A94");
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flowpay',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: Stack(
        children: [
          const MyHomePage(title: 'Home page'),

          Magic.instance.relayer // Insert Magic relayer here
        ],
      )

    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


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
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Sample()),
                );
              },
              child: Text('himanshu'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => WalletConnect()),
                );
              },
              child: Text('jashwanth'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
              },
              child: Text('Login'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>MyWebView( selectedUrl: 'https://flowpay-auth.vercel.app/')),
                );
              },
              child: Text('blocto'),
            ),
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
