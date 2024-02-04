import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

enum ScreenType { mobile, tablet, desktop }

class ChatsScreen extends StatefulWidget {
  const ChatsScreen({super.key});

  @override
  State<ChatsScreen> createState() => _ChatsScreenState();
}

class _ChatsScreenState extends State<ChatsScreen> {
  ScreenType screenType = ScreenType.mobile;

  drawScreen() {
    switch (screenType) {
      case (ScreenType.mobile):
        return PeopleFrame();
      case (ScreenType.tablet):
        return Row(
          children: [
            SizedBox(
              width: 280,
              height: double.infinity,
              child: PeopleFrame(),
            ),
            VerticalDivider(),
            Expanded(child: ConversationsFrame()),
          ],
        );
      case (ScreenType.desktop):
        return Row(
          children: [
            SizedBox(width: 280, child: PeopleFrame()),
            VerticalDivider(),
            Expanded(child: ConversationsFrame()),
            VerticalDivider(),
            ProfileFrame(),
          ],
        );
    }
  }

  SizedBox ProfileFrame() {
    return SizedBox(
      width: screenType == ScreenType.desktop ? 280 : double.infinity,
      child: SizedBox.expand(
        child: Column(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('assets/images/1.jpeg'),
              radius: 66,
            ),
            Text(
              "Eren Günal",
              style: TextStyle(color: Colors.white),
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(CupertinoIcons.memories_badge_minus,
                      color: Colors.white),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(CupertinoIcons.share, color: Colors.white),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(CupertinoIcons.trash, color: Colors.white),
                )
              ],
            ),
            Divider(),
            Text("Last Online: 15 minutes ago..",
                style: TextStyle(color: Colors.white)),
            Divider(),
          ],
        ),
      ),
    );
  }

  detectScreen(Size size) {
    if (size.width < 600) {
      return ScreenType.mobile;
    } else if (size.width < 840) {
      return ScreenType.tablet;
    } else {
      return ScreenType.desktop;
    }
  }

  drawAppBar() {
    switch (screenType) {
      case (ScreenType.mobile):
        return AppBar(
          backgroundColor: Colors.black, // Arka plan rengi siyah yapıldı
          title: Image.asset('assets/images/X_logo_2023_(white).png',
              height: 40), // Logo eklendi
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        );
      case (ScreenType.tablet):
        return AppBar();
      case (ScreenType.desktop):
        return null;
    }
  }

  drawDrawer() {
    switch (screenType) {
      case (ScreenType.mobile):
        return Drawer(
          child: ListView.builder(
            itemCount: 180,
            itemBuilder: (context, index) => ListTile(
              leading: Icon(
                CupertinoIcons.list_bullet,
                color: Colors.white,
              ),
              title: Text(
                "Menu Item $index",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        );
      case (ScreenType.tablet):
        return Drawer(
          child: ListView.builder(
            itemCount: 180,
            itemBuilder: (context, index) => ListTile(
              leading: Icon(
                CupertinoIcons.list_bullet,
                color: Colors.white,
              ),
              title: Text(
                "Menu Item $index",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        );
      case (ScreenType.desktop):
        return null;
    }
  }

  drawEndDrawer() {
    switch (screenType) {
      case (ScreenType.mobile):
        return Drawer(
          child: ProfileFrame(),
        );
      case (ScreenType.tablet):
        return Drawer(
          child: ProfileFrame(),
        );
      case (ScreenType.desktop):
        return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    setState(() {
      screenType = detectScreen(MediaQuery.of(context).size);
    });

    return Scaffold(
      appBar: drawAppBar(),
      body: drawScreen(),
      drawer: drawDrawer(),
      endDrawer: drawEndDrawer(),
      bottomNavigationBar: null,
      backgroundColor: Colors.black, // Arka plan rengi siyah yapıldı
    );
  }

  ListView ConversationsFrame() {
    return ListView(
      children: [],
    );
  }

  ListView PeopleFrame() {
    return ListView.builder(
      itemCount: people.length,
      itemBuilder: (context, index) => Container(
        padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.grey.shade300)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(people[index]["avatar"].toString()),
              radius: 32,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Column(
                  children: [
                    Text(people[index]["name"].toString(),
                        style: TextStyle(color: Colors.white)),
                    Text(
                      people[index]["lastMsg"].toString(),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      softWrap: true,
                      style: TextStyle(fontSize: 10, color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ),
            Column(
              children: [
                Text(
                  (people[index]["date"] as DateTime).hour.toString() +
                      ":" +
                      (people[index]["date"] as DateTime).minute.toString(),
                  style: TextStyle(color: Colors.grey),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.blue,
                  ),
                  child: Text(
                    people[index]["unread"].toString(),
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

final people = [
  {
    "id": 1,
    "name": "Eren Günal",
    "lastMsg": "Final Projesi ne zaman bitiyor",
    "avatar": "assets/images/1.jpeg",
    "unread": 1,
    "date": DateTime.now().add(Duration(minutes: -94)),
  },
  {
    "id": 2,
    "name": "Tunahan",
    "lastMsg": "Projenin son tarihi 4 şubatmış",
    "avatar": "assets/images/2.jpg",
    "unread": 1,
    "date": DateTime.now().add(Duration(minutes: -20)),
  },
  {
    "id": 3,
    "name": "Keyvan Hoca",
    "lastMsg": "Projende responsive olması gerekiyor",
    "avatar": "assets/images/3.jpg",
    "unread": 1,
    "date": DateTime.now().add(Duration(minutes: -47)),
  },
  {
    "id": 4,
    "name": "ISU",
    "lastMsg": "1 Bütünüz var",
    "avatar": "assets/images/4.jpg",
    "unread": 1,
    "date": DateTime.now().add(Duration(minutes: -30)),
  },
  {
    "id": 5,
    "name": "Entera",
    "lastMsg": "Maaşınıza zam yapmıyoruz",
    "avatar": "assets/images/1.jpeg",
    "unread": 1,
    "date": DateTime.now().add(Duration(minutes: -24)),
  },
  {
    "id": 6,
    "name": "ISU",
    "lastMsg": "1 Bütünüz var",
    "avatar": "assets/images/4.jpg",
    "unread": 1,
    "date": DateTime.now().add(Duration(minutes: -30)),
  },
  {
    "id": 7,
    "name": "Entera",
    "lastMsg": "Maaşınıza zam yapmıyoruz",
    "avatar": "assets/images/1.jpeg",
    "unread": 1,
    "date": DateTime.now().add(Duration(minutes: -24)),
  },
  {
    "id": 8,
    "name": "ISU",
    "lastMsg": "1 Bütünüz var",
    "avatar": "assets/images/4.jpg",
    "unread": 1,
    "date": DateTime.now().add(Duration(minutes: -30)),
  },
  {
    "id": 9,
    "name": "Entera",
    "lastMsg": "Maaşınıza zam yapmıyoruz",
    "avatar": "assets/images/1.jpeg",
    "unread": 1,
    "date": DateTime.now().add(Duration(minutes: -24)),
  },
];

final messages = [
  {
    "sender_id": 1,
    "msg": "Hello!",
    "data": "2024-02-03",
    "type": "text",
    "sender": "Alice"
  },
  {
    "sender_id": 2,
    "msg": "Hi there!",
    "data": "2024-02-03",
    "type": "text",
    "sender": "Bob"
  },
  {
    "sender_id": 1,
    "msg": "How are you?",
    "data": "2024-02-04",
    "type": "text",
    "sender": "Alice"
  },
  {
    "sender_id": 2,
    "msg": "I'm fine, thanks!",
    "data": "2024-02-04",
    "type": "text",
    "sender": "Bob"
  },
  {
    "sender_id": 1,
    "msg": "What are you doing?",
    "data": "2024-02-05",
    "type": "text",
    "sender": "Alice"
  },
  {
    "sender_id": 2,
    "msg": "Just working on some code.",
    "data": "2024-02-05",
    "type": "text",
    "sender": "Bob"
  },
  {
    "sender_id": 1,
    "msg": "Sounds busy!",
    "data": "2024-02-06",
    "type": "text",
    "sender": "Alice"
  },
  {
    "sender_id": 2,
    "msg": "Yes, but it's fun.",
    "data": "2024-02-06",
    "type": "text",
    "sender": "Bob"
  },
  {
    "sender_id": 1,
    "msg": "I bet!",
    "data": "2024-02-07",
    "type": "text",
    "sender": "Alice"
  },
  {
    "sender_id": 2,
    "msg": "How about you?",
    "data": "2024-02-07",
    "type": "text",
    "sender": "Bob"
  },
  {
    "sender_id": 1,
    "msg": "I'm just relaxing at home.",
    "data": "2024-02-08",
    "type": "text",
    "sender": "Alice"
  },
  {
    "sender_id": 2,
    "msg": "Nice! Enjoy your day.",
    "data": "2024-02-08",
    "type": "text",
    "sender": "Bob"
  },
  {
    "sender_id": 1,
    "msg": "Thanks, Bob!",
    "data": "2024-02-09",
    "type": "text",
    "sender": "Alice"
  },
  {
    "sender_id": 2,
    "msg": "No problem!",
    "data": "2024-02-09",
    "type": "text",
    "sender": "Bob"
  },
  {
    "sender_id": 1,
    "msg": "How's the weather there?",
    "data": "2024-02-10",
    "type": "text",
    "sender": "Alice"
  },
  {
    "sender_id": 2,
    "msg": "It's sunny today.",
    "data": "2024-02-10",
    "type": "text",
    "sender": "Bob"
  },
  {
    "sender_id": 1,
    "msg": "Lucky you!",
    "data": "2024-02-11",
    "type": "text",
    "sender": "Alice"
  },
  {
    "sender_id": 2,
    "msg": "Yes, indeed!",
    "data": "2024-02-11",
    "type": "text",
    "sender": "Bob"
  },
  {
    "sender_id": 1,
    "msg": "I wish it were sunny here too.",
    "data": "2024-02-12",
    "type": "text",
    "sender": "Alice"
  },
  {
    "sender_id": 2,
    "msg": "Hopefully, it'll be sunny soon.",
    "data": "2024-02-12",
    "type": "text",
    "sender": "Bob"
  },
];
