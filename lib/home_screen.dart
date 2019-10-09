import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:nena/customNenaBar.dart';
import 'package:nena/individualPodcast_screen.dart';

// import 'createPodcast.dart';
// import 'nenaProfileScreen.dart';

class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        
        bottomNavigationBar: NenaAppBar(),
        body: SingleChildScrollView(
          //preventing user scrolling..
          physics: NeverScrollableScrollPhysics(),
          child: Column(
            children: <Widget>[
              HomeScreenTopSection(),
              SizedBox(height: 10.0),
              NenaPopularText(),
              HomeScreenTopCardStack(),
              SizedBox(height: 5.0),
              HomeScreenSearchSection(),
              SizedBox(height: 15.0),
              NenaCommunityText(),
              NenaRecentUploadsText(),
              NenaPodcastStack(),
            ],
          ),
        ),
        );
  }
}

class NenaPopularText extends StatefulWidget {
  @override
  _NenaPopularTextState createState() => _NenaPopularTextState();
}

class _NenaPopularTextState extends State<NenaPopularText> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(left: 10.0, top: 2.0, right: 8.0, bottom: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Text(
            "Listen to What's Popular",
            style: TextStyle(color: Colors.black54, fontSize: 18.0),
          ),
        ],
      ),
    );
  }
}

class HomeScreenTopSection extends StatefulWidget {
  @override
  _HomeScreenTopSectionState createState() => _HomeScreenTopSectionState();
}

class _HomeScreenTopSectionState extends State<HomeScreenTopSection> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: false,
      automaticallyImplyLeading: false,
      backgroundColor: Color(0xFFD4145A),
      title: Stack(
        children: <Widget>[
          Row(
            children: <Widget>[
              Text("Nena"),
              Icon(Icons.mic),
            ],
          )
        ],
      ),
    );
  }
}

class HomeScreenTopCardStack extends StatefulWidget {
  @override
  _HomeScreenTopCardStackState createState() => _HomeScreenTopCardStackState();
}

class _HomeScreenTopCardStackState extends State<HomeScreenTopCardStack> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 190.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: nenaTopPodcasts,
      ),
    );
  }
}

List<NenaTopPodcasts> nenaTopPodcasts = [
  NenaTopPodcasts(
      "assets/images/gallery5.jpg", "Creative Juice", "Abdul Mtoro III", 845),
  NenaTopPodcasts(
      "assets/images/gallery2.jpg", "Building Ideas", "Editha Mtema", 2145),
  NenaTopPodcasts("assets/images/player_cover.jpg", "Not Perfectionism",
      "Erick Shaw", 5845),
  NenaTopPodcasts(
      "assets/images/gallery9.jpg", "Social Thinking", "Zainab Adam", 512),
  NenaTopPodcasts("assets/images/hack.png", "Being Real", "Vevisa Boys", 412),
];

class NenaTopPodcasts extends StatelessWidget {
  final String imagePath, podcastTitle, creatorName;
  final int listenersCount;
  //constructor for initialization
  NenaTopPodcasts(
      this.imagePath, this.podcastTitle, this.creatorName, this.listenersCount);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: Column(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            child: Stack(
              children: <Widget>[
                Container(
                  height: 170.0,
                  width: 250.0,
                  child: Image.asset(imagePath, fit: BoxFit.cover),
                  decoration:
                      BoxDecoration(color: Colors.black12.withOpacity(.2)),
                ),
                Positioned(
                  left: 0.0,
                  bottom: 0.0,
                  width: 300.0,
                  height: 150.0,
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          colors: [
                            Color(0xFFD4145A),
                            Color(0xFFD43E5A).withOpacity(.01)
                          ]),
                    ),
                  ),
                ),
                Positioned(
                  left: 10.0,
                  bottom: 10.0,
                  right: 10.0,
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            podcastTitle,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15.0,
                            ),
                          ),
                          SizedBox(height: 5.0),
                          Text(
                            "By " + creatorName,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 8.0,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Positioned(
                  left: 50.0,
                  top: 50.0,
                  right: 50.0,
                  child: Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 5.0, vertical: 2.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white.withOpacity(.4),
                    ),
                    child: IconButton(
                      onPressed: () {
                        //Go to individual podcast UI screen..
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PlayPodcastScreen(),
                          ),
                        );
                      },
                      icon: Icon(Icons.headset),
                      iconSize: 25.0,
                      color: Colors.white,
                    ),
                  ),
                ),
                Positioned(
                  left: 225.0,
                  bottom: 140.0,
                  top: 10.0,
                  right: 5.0,
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.equalizer,
                        size: 15.0,
                        color: Colors.white.withOpacity(.8),
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class HomeScreenSearchSection extends StatefulWidget {
  @override
  _HomeScreenSearchSectionState createState() =>
      _HomeScreenSearchSectionState();
}

class _HomeScreenSearchSectionState extends State<HomeScreenSearchSection> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30.0, bottom: 10.0, right: 30.0),
      child: Material(
          elevation: 3.0,
          borderRadius: BorderRadius.all(
            Radius.circular(30.0),
          ),
          child: TextField(
            cursorColor: Color(0xFFD4145A),
            style: TextStyle(color: Colors.black87.withOpacity(.5)),
            decoration: InputDecoration(
                hintText: "Search for Podcasts...",
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.black87.withOpacity(.5),
                ),
                suffixIcon: Icon(
                  Icons.mic,
                  color: Colors.black87.withOpacity(.5),
                ),
                border: InputBorder.none,
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0)),
          )),
    );
  }
}

class NenaCommunityText extends StatefulWidget {
  @override
  _NenaCommunityTextState createState() => _NenaCommunityTextState();
}

class _NenaCommunityTextState extends State<NenaCommunityText> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(left: 10.0, top: 2.0, right: 8.0, bottom: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Text(
            "Discover on Nena Community",
            style: TextStyle(color: Color(0xFFD4145A), fontSize: 22.0),
          ),
        ],
      ),
    );
  }
}

class NenaRecentUploadsText extends StatefulWidget {
  @override
  _NenaRecentUploadsTextState createState() => _NenaRecentUploadsTextState();
}

class _NenaRecentUploadsTextState extends State<NenaRecentUploadsText> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          top: 2.0, left: 10.0, right: 10.0, bottom: 10.0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            "Recent Uploads",
            style: TextStyle(
              color: Colors.black87.withOpacity(.5),
            ),
          ),
          Spacer(),
          Text(
            "Podcasts(6)",
            style: TextStyle(
              color: Colors.black87.withOpacity(.5),
            ),
          )
        ],
      ),
    );
  }
}

List<NenaRecentUploads> nenaPodcastList = [
  NenaRecentUploads(
      "assets/images/gallery3.jpg", "Escaping Reality", "Damian Soul"),
  NenaRecentUploads(
      "assets/images/gallery6.jpg", "Living a Lie", "Richard BuzaBoy"),
  NenaRecentUploads(
      "assets/images/player_cover.jpg", "Elegant Fashion", "Jane Doe"),
  NenaRecentUploads(
      "assets/images/gallery9.jpg", "Winning Battles", "Solomon Azalea"),
];

class NenaRecentUploads extends StatelessWidget {
  final String imagePath, podcastTitle, creatorName;
  //constructor for initialization
  NenaRecentUploads(this.imagePath, this.podcastTitle, this.creatorName);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: Column(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
            child: Stack(
              children: <Widget>[
                Container(
                  height: 150.0,
                  width: 200.0,
                  child: Image.asset(imagePath, fit: BoxFit.fill),
                  decoration:
                      BoxDecoration(color: Colors.black12.withOpacity(.2)),
                ),
                Positioned(
                  left: 0.0,
                  bottom: 0.0,
                  width: 300.0,
                  height: 150.0,
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          colors: [
                            Color(0xFFD4145A),
                            Color(0xFFD43E5A).withOpacity(.01)
                          ]),
                    ),
                  ),
                ),
                Positioned(
                  left: 10.0,
                  bottom: 10.0,
                  right: 10.0,
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            podcastTitle,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12.0,
                            ),
                          ),
                          SizedBox(height: 5.0),
                          Text(
                            "By " + creatorName,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 8.0,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Positioned(
                  left: 50.0,
                  top: 50.0,
                  right: 50.0,
                  child: Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 5.0, vertical: 2.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white.withOpacity(.4),
                    ),
                    child: IconButton(
                        onPressed: () {
                          //Go to individual podcast UI screen..
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PlayPodcastScreen(),
                            ),
                          );
                        },
                        splashColor: Colors.white,
                        icon: Icon(Icons.headset),
                        iconSize: 25.0,
                        color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class NenaPodcastStack extends StatefulWidget {
  @override
  _NenaPodcastStackState createState() => _NenaPodcastStackState();
}

class _NenaPodcastStackState extends State<NenaPodcastStack> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 210.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: nenaPodcastList,
      ),
    );
  }
}
