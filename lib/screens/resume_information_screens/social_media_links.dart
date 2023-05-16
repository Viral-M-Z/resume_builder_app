
import 'package:flutter/material.dart';

class SocialMediaLinks extends StatefulWidget {
  const SocialMediaLinks({Key? key}) : super(key: key);

  @override
  State<SocialMediaLinks> createState() => _SocialMediaLinksState();
}

class _SocialMediaLinksState extends State<SocialMediaLinks> {

  /// Social Media Links
  TextEditingController linkedIn = TextEditingController();
  TextEditingController skype = TextEditingController();
  TextEditingController github = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Social Media Links
            Container(
              margin: const EdgeInsets.all(12.0),
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
              margin: const EdgeInsets.all(12.0),
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
              margin: const EdgeInsets.all(12.0),
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
    );
  }
}

