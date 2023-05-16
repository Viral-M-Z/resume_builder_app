
import 'package:flutter/material.dart';
import 'package:resume_builder_app/screens/resume_information_screens/resume_information_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key,required this.title}) : super(key: key);
  final String title;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {



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
  TextEditingController certiCourseName = TextEditingController();
  TextEditingController certiInstituteName = TextEditingController();
  TextEditingController certiLink= TextEditingController();
  TextEditingController certiScore = TextEditingController();

  @override
  void initState() async {
    // TODO: implement initState
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt("resumeCount", 0);
    super.initState();
  }

  _incrementResumeCnt() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    int? resumeCnt = prefs.getInt("resumeCount");
    int rsCnt = resumeCnt! + 1;
    await prefs.setInt('resumeCount', rsCnt);
    print(prefs.getInt("resumeCount"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _incrementResumeCnt();

          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return const PersonalDetailScreen();
          }));

        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [

            const SizedBox(height: 12.0,),






          ],
        ),
      ),
    );
  }
}


