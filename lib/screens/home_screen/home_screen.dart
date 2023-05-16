
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final _formKey = GlobalKey<FormState>();

  /// Personal Details
  TextEditingController email = TextEditingController();
  TextEditingController firstName = TextEditingController();
  TextEditingController lastName = TextEditingController();
  TextEditingController jobRole = TextEditingController();
  TextEditingController phoneNumber = TextEditingController();
  TextEditingController profile = TextEditingController();

  /// Social Media Links
  TextEditingController linkedIn = TextEditingController();
  TextEditingController skype = TextEditingController();
  TextEditingController github = TextEditingController();


  /// Employment History
  TextEditingController companyName = TextEditingController();
  TextEditingController timeRange = TextEditingController();
  TextEditingController workDescription = TextEditingController();

  /// Educational History
  TextEditingController eduCourseName = TextEditingController();
  TextEditingController eduInstituteName = TextEditingController();
  TextEditingController eduTimeRange = TextEditingController();
  TextEditingController eduDescription = TextEditingController();
  TextEditingController eduScore = TextEditingController();

  /// Common
  TextEditingController skills = TextEditingController();
  TextEditingController spokenLanguages = TextEditingController();

  /// Certifications
  TextEditingController certifications = TextEditingController();
  


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Resume Builder"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [

            Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    controller: firstName,
                  ),
                ],
              )
            ),




          ],
        ),
      ),
    );
  }
}

