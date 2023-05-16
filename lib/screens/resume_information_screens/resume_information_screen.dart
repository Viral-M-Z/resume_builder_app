
import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:resume_builder_app/screens/resume_information_screens/social_media_links.dart';
import 'package:sqflite/sqflite.dart';

class PersonalDetailScreen extends StatefulWidget {
  const PersonalDetailScreen({Key? key}) : super(key: key);

  @override
  State<PersonalDetailScreen> createState() => _PersonalDetailScreenState();
}

class _PersonalDetailScreenState extends State<PersonalDetailScreen> {

  final _formKey = GlobalKey<FormState>();
  late Database _db;

  /// Personal Details
  TextEditingController email = TextEditingController();
  TextEditingController firstName = TextEditingController();
  TextEditingController lastName = TextEditingController();
  TextEditingController jobRole = TextEditingController();
  TextEditingController phoneNumber = TextEditingController();
  TextEditingController profile = TextEditingController();

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
        title: const Text("Personal Details"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [

            const SizedBox(height: 12.0,),

            Form(
              key: _formKey,
              child: Column(
                children: [



                  /// Personal Details

                  Container(
                    margin: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      controller: email,
                      decoration: InputDecoration(
                        labelText: "Email",
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

                  Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.45,
                        margin: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          controller: firstName,
                          decoration: InputDecoration(
                            labelText: "First Name",
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
                        width: MediaQuery.of(context).size.width * 0.45,
                        margin: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          controller: lastName,
                          decoration: InputDecoration(
                            labelText: "Last Name",
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

                  Container(
                    margin: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      controller: jobRole,
                      decoration: InputDecoration(
                        labelText: "Job Role",
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
                      controller: phoneNumber,
                      decoration: InputDecoration(
                        labelText: "Phone Number",
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
                      controller: profile,
                      maxLines: 4,
                      decoration: InputDecoration(
                        labelText: "Profile",
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

                  ElevatedButton(
                    child: const Text(
                      "NEXT",
                      style: TextStyle(
                        fontSize: 18,
                        letterSpacing: 2,
                      ),
                    ),
                    onPressed: () async {
                      // Get a location using getDatabasesPath
                      var databasesPath = await getDatabasesPath();
                      final path = join(databasesPath, 'resumedb.db');
                      Database database = await openDatabase(
                        path, version: 1,
                        onCreate: (Database db, int version) async {
                          await db.execute(
                            'CREATE TABLE personal_details(rid INTEGER PRIMARY KEY, email TEXT, firstname TEXT, lastname TEXT, jobrole TEXT, phone INTEGER, profile TEXT)'
                          );
                        }
                      );

                      await database.transaction((txn) async {
                        int id1 = await txn.rawInsert(
                            'INSERT INTO personal_details(rid, email, firstname, lastname, jobrole, phone, profile) VALUES(1, "${email.text.toString()}", "${firstName.text.toString()}", "${lastName.text.toString()}", "${jobRole.text.toString()}", ${phoneNumber.text.toString()}, "${profile.text.toString()}")');
                        print('inserted1: $id1');
                      });


                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return const SocialMediaLinks();
                      }));




                    },
                  )

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

