import 'package:flutter/material.dart';

void main() {
  runApp(NewPage());
}

class NewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => TwitterCloneUI(),
        '/profile': (context) => ProfilePage(),
      },
    );
  }
}
class TwitterCloneUI extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: GestureDetector(
            onTap: () {
              _scaffoldKey.currentState?.openDrawer();
            },
            child: CircleAvatar(
              radius: 16,
              backgroundColor: Colors.grey,
              child: Icon(Icons.person, color: Colors.black, size: 16),
            ),
          ),
        ),
        title: Center(
          child: Image.asset(
            'assets/twitter_logo.png',
            height: 30,
            width: 30,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                "Upgrade",
                style: TextStyle(color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey[850],
              ),
            ),
          ),
        ],
      ),
      drawer: Drawer(
        backgroundColor: Colors.black,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.black),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.grey,
                    child: Icon(Icons.person, color: Colors.black, size: 30),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "JACK",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "Jack@example.com",
                    style: TextStyle(color: Colors.grey, fontSize: 14),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.person, color: Colors.white),
              title: Text("Profile", style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.pushNamed(context, '/profile');
              },
            ),
            ListTile(
              leading: Image.asset(
                'assets/twitter_logo.png',
                height: 24,
                width: 24,
                color: Colors.white,
              ),
              title: Text("Premium", style: TextStyle(color: Colors.white)),
            ),
            // Additional Drawer Items...
          ],
        ),
      ),
      body: Column(
        children: [
          // Tab Section
          SizedBox(height: 5),
          Container(
            padding: EdgeInsets.symmetric(vertical: 8),
            color: Colors.grey[850],
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("For you",
                    style: TextStyle(color: Colors.white, fontSize: 16)),
                Text("Following",
                    style: TextStyle(color: Colors.grey, fontSize: 16)),
              ],
            ),
          ),
          // Post List
          Expanded(
            child: ListView(
              children: [
                PostItem(
                  avatar:
                  "https://gpm.nasa.gov/sites/default/files/NASA-Logo-Large.jpg",
                  username: "NASA",
                  time: "1d",
                  content:
                  "LIVE: Listen in as experts from NASA and Firefly Space discuss the science and technology that will fly to the Moon on #BlueGhost as part of the #Artemis campaign.",
                  imageUrl:
                  "https://i.pinimg.com/736x/5f/45/50/5f455009fda12455634f3cd6ac85d90c.jpg",
                ),
                PostItem(
                  avatar:
                  "https://i.pinimg.com/564x/b6/12/2e/b6122e067cad4cde07468d6627544989.jpg",
                  username: "SpaceX",
                  time: "1d",
                  content: "Liftoff!",
                  imageUrl:
                  "https://images.firstpost.com/uploads/2024/04/Tatas-made-in-India-military-satellite-placed-in-orbit-succesfully-by-SpaceX-rocket-2024-04-51b3c1a296d39818e8e98e1372cd2506-1200x675.jpg?im=FitAndFill=(596,336)",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search, color: Colors.white),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.share, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.grey,
                    child: Icon(Icons.person, color: Colors.black, size: 30),
                  ),
                  Spacer(),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text("Set up profile"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("JACK", style: TextStyle(color: Colors.white, fontSize: 20)),
                  Text("@JACK134", style: TextStyle(color: Colors.grey)),
                  SizedBox(height: 4),
                  Row(
                    children: [
                      Icon(Icons.calendar_today, color: Colors.grey, size: 16),
                      SizedBox(width: 4),
                      Text("Joined October 2024", style: TextStyle(color: Colors.grey)),
                    ],
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Text("1 Following", style: TextStyle(color: Colors.white)),
                      SizedBox(width: 16),
                      Text("0 Followers", style: TextStyle(color: Colors.white)),
                    ],
                  ),
                ],
              ),
            ),
            Divider(color: Colors.grey),
            TabBarSection(),
            Divider(color: Colors.grey),
            WhoToFollowSection(),
          ],
        ),
      ),
    );
  }
}

class TabBarSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: DefaultTabController(
        length: 6,
        child: TabBar(
          isScrollable: true,
          indicatorColor: Colors.blue,
          tabs: [
            Tab(child: Text("Posts", style: TextStyle(color: Colors.white))),
            Tab(child: Text("Replies", style: TextStyle(color: Colors.white))),
            Tab(child: Text("Highlights", style: TextStyle(color: Colors.white))),
            Tab(child: Text("Articles", style: TextStyle(color: Colors.white))),
            Tab(child: Text("Media", style: TextStyle(color: Colors.white))),
            Tab(child: Text("Likes", style: TextStyle(color: Colors.white))),
          ],
        ),
      ),
    );
  }
}

class WhoToFollowSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 20,
                backgroundColor: Colors.grey,
                child: Icon(Icons.person, color: Colors.black, size: 20),
              ),
              SizedBox(width: 8),
              Text("ESPN", style: TextStyle(color: Colors.white)),
              Spacer(),
              ElevatedButton(
                onPressed: () {},
                child: Text("Follow"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class PostItem extends StatelessWidget {
  final String avatar;
  final String username;
  final String time;
  final String content;
  final String imageUrl;

  PostItem({
    required this.avatar,
    required this.username,
    required this.time,
    required this.content,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 16,
                backgroundImage: NetworkImage(avatar),
              ),
              SizedBox(width: 8),
              Text(username, style: TextStyle(color: Colors.white)),
              SizedBox(width: 4),
              Text("@${time}", style: TextStyle(color: Colors.grey)),
            ],
          ),
          SizedBox(height: 8),
          Text(content, style: TextStyle(color: Colors.white)),
          SizedBox(height: 8),
          Image.network(imageUrl),
          SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.chat_bubble_outline, color: Colors.grey),
              Icon(Icons.repeat, color: Colors.grey),
              Icon(Icons.favorite_border, color: Colors.grey),
              Icon(Icons.share, color: Colors.grey),
            ],
          ),
          Divider(color: Colors.grey),
        ],
      ),
    );
  }
}
