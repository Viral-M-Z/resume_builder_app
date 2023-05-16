
import 'package:flutter/material.dart';
import 'package:resume_builder_app/constants/strings/strings.dart';
import 'package:sqflite/sqflite.dart';

class EmploymentHistory extends StatefulWidget {
  const EmploymentHistory({Key? key}) : super(key: key);

  @override
  State<EmploymentHistory> createState() => _EmploymentHistoryState();
}

class _EmploymentHistoryState extends State<EmploymentHistory> {

  final _formKey = GlobalKey<FormState>();

  /// Employment History
  TextEditingController companyName = TextEditingController();
  TextEditingController timeRange = TextEditingController();
  TextEditingController workDescription = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    _openDB();
    super.initState();
  }

  _openDB() async {
    var db = await openDatabase(DATABASE_NAME);
    await db.close();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Social Media Details'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [

            const SizedBox(height: 24.0,),

            /// Social Media Links

            Form(
              key: _formKey,
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      controller: companyName,
                      decoration: InputDecoration(
                        labelText: "Company Name",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      controller: companyName,
                      decoration: InputDecoration(
                        labelText: "Company Name",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                      ),
                    ),
                  ),

                ]
              ),
            ),
          ]
        ),
      ),
    );
  }
}

