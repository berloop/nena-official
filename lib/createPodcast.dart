import 'package:flutter/material.dart';

class CreatePodcastScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: SingleChildScrollView(
        //preventing user scrolling..
        physics: NeverScrollableScrollPhysics(),
        child: Column(
          children: <Widget>[
            CustomAppBar(),
            SizedBox(height: 100),
            NenaLogo(),
            RecordingDurationText(),
            SizedBox(height: 50.0),
            ControlButtonsRow(),
            ControlButtonsLabel(),
          ],
        ),
      ),
    );
  }
}

class CustomAppBar extends StatefulWidget {
  @override
  _CustomAppBarState createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    final Color nena = const Color(0xFFD4145A);
    return Material(
      elevation: 2.0,
      child: AppBar(
        backgroundColor: nena,
        centerTitle: true,
        title: Text("Create Podcast"),
      ),
    );
  }
}

class NenaLogo extends StatefulWidget {
  @override
  _NenaLogoState createState() => _NenaLogoState();
}

class _NenaLogoState extends State<NenaLogo> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Center(
        child: Container(
            child: Icon(
          Icons.mic,
          size: 145.0,
          color: Color(0xFFD4145A),
        )),
      ),
    );
  }
}

class RecordingDurationText extends StatefulWidget {
  @override
  _RecordingDurationTextState createState() => _RecordingDurationTextState();
}

class _RecordingDurationTextState extends State<RecordingDurationText> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "0:00",
        style: TextStyle(color: Color(0xFFD4145A), fontSize: 50.0),
      ),
    );
  }
}

class ControlButtonsRow extends StatefulWidget {
  @override
  _ControlButtonsRowState createState() => _ControlButtonsRowState();
}

class _ControlButtonsRowState extends State<ControlButtonsRow> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          IconButton(
            onPressed: () {
              print("Undo Recording");
            },
            icon: Icon(Icons.undo),
            iconSize: 30.0,
            color: Color(0xFFD4145A),
          ),
          Container(
            height: 70.0,
            width: 70.0,
            decoration: BoxDecoration(
                color: Color(0xFFD4145A),
                borderRadius: BorderRadius.circular(35.0)),
            child: IconButton(
              onPressed: () {
                print("Recording");
              },
              icon: Icon(Icons.mic),
              iconSize: 45.0,
              color: Colors.white,
            ),
          ),
          Container(
            height: 50.0,
            width: 50.0,
            decoration: BoxDecoration(
                color: Color(0xFFD4145A),
                borderRadius: BorderRadius.circular(35.0)),
            child: IconButton(
              onPressed: () {
                print("Publish opening modal");
              },
              icon: Icon(Icons.done),
              iconSize: 30.0,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}

class ControlButtonsLabel extends StatefulWidget {
  @override
  _ControlButtonsLabelState createState() => _ControlButtonsLabelState();
}

class _ControlButtonsLabelState extends State<ControlButtonsLabel> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Text(
            "Undo",
            style: TextStyle(fontSize: 14.0, color: Colors.black54),
            textAlign: TextAlign.center,
          ),
          Text(
            "Undo",
            style: TextStyle(fontSize: 14.0, color: Colors.transparent),
            textAlign: TextAlign.center,
          ),
          Text(
            "Save",
            style: TextStyle(fontSize: 14.0, color: Colors.black54),
          ),
        ],
      ),
    );
  }
}
