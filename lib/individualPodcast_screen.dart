import 'package:flutter/material.dart';
import 'package:nena/customNenaBar.dart';
import 'package:nena/nena_popover.dart';

class PlayPodcastScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      bottomNavigationBar: NenaAppBar(),
      body: Column(
        children: <Widget>[
          TopRowWithButtons(),
          ImageComponentSection(),
          CreatorInfoSection(),
          PodcastSliderSection(),
        ],
      ),
    );
  }
}

class TopRowWithButtons extends StatefulWidget {
  @override
  _TopRowWithButtonsState createState() => _TopRowWithButtonsState();
}

class _TopRowWithButtonsState extends State<TopRowWithButtons> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          IconButton(
            onPressed: () {
              //getting back..
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: Color(0xFFD4145A),
            ),
          ),
          PopupMenuButton<String>(
            onSelected: choiceAction,
            itemBuilder: (BuildContext context) {
              return NenaPopover.popoverItems.map((String choice) {
                return PopupMenuItem<String>(
                    value: choice, child: Text(choice));
              }).toList();
            },
          ),
        ],
      ),
    );
  }
}

class ImageComponentSection extends StatefulWidget {
  @override
  _ImageComponentSectionState createState() => _ImageComponentSectionState();
}

class _ImageComponentSectionState extends State<ImageComponentSection> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Material(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(22.0)),
          elevation: 5.0,
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
            child: Stack(
              children: <Widget>[
                Container(
                  width: 350.0,
                  height: 300.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(12.0))),
                  child: Image.asset("assets/images/player_cover.jpg",
                      fit: BoxFit.cover),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class CreatorInfoSection extends StatefulWidget {
  @override
  _CreatorInfoSectionState createState() => _CreatorInfoSectionState();
}

class _CreatorInfoSectionState extends State<CreatorInfoSection> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0, left: 5.0, right: 5.0),
      child: Column(
        children: <Widget>[
          Center(
            child: Text(
              "In Deep End",
              style: TextStyle(
                  color: Colors.black87.withOpacity(.6), fontSize: 32.0),
            ),
          ),
          SizedBox(height: 5.0),
          Center(
            child: Text(
              "Abdul Mtoro III",
              style: TextStyle(
                  color: Colors.black87.withOpacity(.6), fontSize: 17.0),
            ),
          ),
          SizedBox(height: 5.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Icon(
                Icons.favorite,
                size: 11.0,
                color: Color(0xFFD4145A),
              ),
              SizedBox(width: 5.0),
              Text(
                "205 Likes",
                style: TextStyle(
                    color: Colors.black87.withOpacity(.6), fontSize: 10.0),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class PodcastSliderSection extends StatefulWidget {
  @override
  _PodcastSliderSectionState createState() => _PodcastSliderSectionState();
}

class _PodcastSliderSectionState extends State<PodcastSliderSection> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Slider(
          onChanged: (double value) {},
          value: 0.5,
          activeColor: Color(0xFFD4145A),
          inactiveColor: Colors.black87.withOpacity(.4),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                "1:45",
                style: TextStyle(color: Colors.black87.withOpacity(.5)),
              ),
              Spacer(),
              Text("-3:45",
                  style: TextStyle(color: Colors.black87.withOpacity(.5))),
            ],
          ),
        ),
        SizedBox(height: 10.0),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              IconButton(
                onPressed: () {
                  //to do..
                },
                iconSize: 25.0,
                icon: Icon(Icons.share),
              ),
              IconButton(
                onPressed: () {
                  //to do..
                },
                iconSize: 25.0,
                icon: Icon(Icons.fast_rewind),
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50.0),
                    color: Color(0xFFD4145A)),
                child: IconButton(
                  onPressed: () {
                    //to do..
                  },
                  iconSize: 35.0,
                  icon: Icon(Icons.play_arrow),
                  color: Colors.white,
                ),
              ),
              IconButton(
                onPressed: () {
                  //to do..
                },
                iconSize: 25.0,
                icon: Icon(Icons.fast_forward),
              ),
              IconButton(
                onPressed: () {
                  //to do..
                },
                iconSize: 25.0,
                icon: Icon(Icons.file_download),
              ),
            ],
          ),
        )
      ],
    );
  }
}

void choiceAction(String choice) {
  //printing on terminal..
  print('Nena Podcasts are awesome!');
}
