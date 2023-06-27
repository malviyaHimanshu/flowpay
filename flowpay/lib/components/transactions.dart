import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class MyTableScreen extends StatefulWidget {
  const MyTableScreen({Key? key}) : super(key: key);

  @override
  _MyTableScreenState createState() => _MyTableScreenState();
}

class _MyTableScreenState extends State<MyTableScreen> {
  List<Map<String, dynamic>> _data = [];

  Future<void> _fetchData() async {
    final response = await http.get(Uri.parse('https://razorpay-api.vercel.app/transactions'));
    if (response.statusCode == 200) {
      final jsonData = json.decode(response.body) as List<dynamic>;
      setState(() {
        _data = jsonData.map((e) => e['transactions'] as Map<String, dynamic>).toList();
      });
    } else {
      throw Exception('Failed to fetch data');
    }
  }

  @override
  void initState() {
    super.initState();
    _fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Transactions'),
      ),
      body: _data.isEmpty
          ? Center(child: CircularProgressIndicator())
          : SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: DataTable(
          columns: [
            DataColumn(label: Text('created_at')),
            DataColumn(label: Text('id')),
            DataColumn(label: Text('amount')),
            DataColumn(label: Text('fund_account_id')),
          ],
          rows: _data.map((data) {
            return DataRow(cells: [
              DataCell(Text('${data['created_at']}')),
              DataCell(Text('${data['id']}')),
              DataCell(Text('${data['amount']}')),
              DataCell(Text('${data['fund_account_id']}')),
            ]);
          }).toList(),
        ),
      ),
    );
  }
}
