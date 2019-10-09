import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: SingleChildScrollView(
        //preventing user scrolling..

        child: Column(
          children: <Widget>[
            ProfileAppBar(),
            StacksectionWithClipper(),
            PodcastTitleSection(),
            ListTileSection(),
          ],
        ),
      ),
    );
  }
}

class StacksectionWithClipper extends StatefulWidget {
  @override
  _StacksectionWithClipperState createState() =>
      _StacksectionWithClipperState();
}

class _StacksectionWithClipperState extends State<StacksectionWithClipper> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ClipPath(
          child: Container(
            height: 220,
            decoration: BoxDecoration(
              color: Color(0xFFD4145A),
            ),
          ),
        ),
        Center(
          child: Container(
            height: 120.0,
            width: 120.0,
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/me.png"),
                ),
                borderRadius: BorderRadius.circular(60.0),
                color: Colors.white),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 130.0),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Abdul Mtoro III",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25.0,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 8.0),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "24k Listeners",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15.0,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 8.0),
              RaisedButton(
                onPressed: () {
                  print("Update your Photo");
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)),
                color: Color(0xFFD4145A),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Icon(
                      Icons.photo,
                      color: Colors.white,
                    ),
                    SizedBox(width: 5.0),
                    Text(
                      "Update Photo",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class ProfileAppBar extends StatefulWidget {
  @override
  _ProfileAppBarState createState() => _ProfileAppBarState();
}

class _ProfileAppBarState extends State<ProfileAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color(0xFFD4145A),
      title: Text("Profile"),
      centerTitle: true,
    );
  }
}

class ListTileSection extends StatefulWidget {
  @override
  _ListTileSectionState createState() => _ListTileSectionState();
}

class _ListTileSectionState extends State<ListTileSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300.0,
      child: ListView(
        scrollDirection: Axis.vertical,
        children: podcastTiles,
      ),
    );
  }
}

List<ProfilePodcasts> podcastTiles = [
  ProfilePodcasts("assets/images/gallery2.jpg", "In Deep End", "2 Mins ago"),
  ProfilePodcasts(
      "assets/images/gallery9.jpg", "Not Perfectionism", "1 hr ago"),
  ProfilePodcasts("assets/images/gallery6.jpg", "Lullaby", "8 hrs ago"),
  ProfilePodcasts("assets/images/gallery4.jpg", "Winkle Winkle", "2 hrs ago"),
  ProfilePodcasts(
      "assets/images/hack.png", "Procastination is Fun?", "5 hrs ago"),
  ProfilePodcasts(
      "assets/images/player_cover.jpg", "In Deepsgg End", "1 Day ago"),
  ProfilePodcasts(
      "assets/images/gallery3.jpg", "Escaping Reality", "2 week ago"),
  ProfilePodcasts("assets/images/gallery4.jpg", "Winkle Winkle", "2 hrs ago"),
  ProfilePodcasts(
      "assets/images/hack.png", "Procastination is Fun?", "5 hrs ago"),
];

class ProfilePodcasts extends StatelessWidget {
  final String podcastImage, podcastTitle, podcastTimestamp;

  ProfilePodcasts(this.podcastImage, this.podcastTitle, this.podcastTimestamp);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Column(
        children: <Widget>[
          ListTile(
            onTap: () {
              print("Podcast Tapped!");
            },
            leading: Container(
              height: 250.0,
              width: 50.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                      image: AssetImage(podcastImage), fit: BoxFit.cover)),
            ),
            trailing: Icon(
              Icons.open_in_new,
              color: Color(0xFFD4145A),
            ),
            title: Text(
              podcastTitle,
            ),
            subtitle: Text(
              podcastTimestamp,
            ),
          ),
        ],
      ),
    );
  }
}

class PodcastTitleSection extends StatefulWidget {
  @override
  _PodcastTitleSectionState createState() => _PodcastTitleSectionState();
}

class _PodcastTitleSectionState extends State<PodcastTitleSection> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 10.0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Text(
            "Your Podcasts",
            style: TextStyle(
              color: Colors.grey,
              fontSize: 25.0,
            ),
          ),
        ],
      ),
    );
  }
}
