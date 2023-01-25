import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.red,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.width,
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: <Widget>[
            SizedBox(
              // width: 200.0,
              width: MediaQuery.of(context).size.width - 100,
              // height: 100.0,
              height: MediaQuery.of(context).size.height / 2 - 100,

              child: ElevatedButton(
                onPressed: () {},
                child: Image.asset(
                  'assets/profile.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              // width: 100.0,
              // height: 200.0,
              width: MediaQuery.of(context).size.height / 2 - 100,

              height: MediaQuery.of(context).size.height - 100,

              child: AbsorbPointer(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue.shade200,
                  ),
                  onPressed: () {},
                  child: null,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
