
import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class SocialMediaLinks extends StatefulWidget {
  const SocialMediaLinks({Key? key}) : super(key: key);

  @override
  State<SocialMediaLinks> createState() => _SocialMediaLinksState();
}

class _SocialMediaLinksState extends State<SocialMediaLinks> {

  final _formKey = GlobalKey<FormState>();

  /// Social Media Links
  TextEditingController linkedIn = TextEditingController();
  TextEditingController skype = TextEditingController();
  TextEditingController github = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    _openDB();
    super.initState();
  }

  _openDB() async {
    var db = await openDatabase('resumedb.db');
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
                      controller: linkedIn,
                      decoration: InputDecoration(
                        labelText: "LinkedIn",
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
                      controller: skype,
                      decoration: InputDecoration(
                        labelText: "Skype",
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
                      controller: github,
                      decoration: InputDecoration(
                        labelText: "Github",
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
                ],
              ),
            ),

            ElevatedButton(
              onPressed: () async {

                var databasesPath = await getDatabasesPath();
                final path = join(databasesPath, 'resumedb.db');
                Database database = await openDatabase(
                    path, version: 1,
                    onCreate: (Database db, int version) async {
                      await db.execute(
                          'CREATE TABLE social_media(linkedin TEXT,rid INTEGER, email TEXT, firstname TEXT, lastname TEXT, jobrole TEXT, phone INTEGER, profile TEXT)'
                      );
                    }
                );

              },
              child: const Text(
                "NEXT",
                style: TextStyle(
                  fontSize: 18,
                  letterSpacing: 2,
                ),
              ),
            ),


          ],
        ),
      ),
    );
  }
}

