import 'package:flutter/material.dart';
import 'ChatsScreen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: PostsSection(),
  ));
}

class PostsSection extends StatelessWidget {
  const PostsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        children: [
          Header(),
          PostItem(
            avatar: 'assets/images/1.jpeg',
            username: 'JohnDoe',
            handle: '@johndoe',
            time: '5m',
            text: 'This is a tweet example!',
            image: 'assets/images/post1.jpg',
            likes: 50,
          ),
          PostItem(
            avatar: 'assets/images/2.jpg',
            username: 'Alice',
            handle: '@alice',
            time: '10m',
            text: 'Flutter is awesome!',
            image: 'assets/images/post2.jpg',
            likes: 25,
          ),
          PostItem(
            avatar: 'assets/images/3.jpg',
            username: 'Bob',
            handle: '@bob',
            time: '15m',
            text: 'Just finished my Flutter project!',
            image: 'assets/images/post3.jpg',
            likes: 40,
          ),
          PostItem(
            avatar: 'assets/images/4.jpg',
            username: 'JaneSmith',
            handle: '@janesmith',
            time: '20m',
            text: 'Coding is life!',
            image: null,
            likes: 15,
          ),
          PostItem(
            avatar: 'assets/images/5.jpg',
            username: 'Emma',
            handle: '@emma',
            time: '25m',
            text: 'Learning new things everyday!',
            image: 'assets/images/post4.jpg',
            likes: 30,
          ),
          PostItem(
            avatar: 'assets/images/6.jpg',
            username: 'David',
            handle: '@david',
            time: '30m',
            text: 'Excited for the Flutter conference!',
            image: null,
            likes: 20,
          ),
          PostItem(
            avatar: 'assets/images/4.jpg',
            username: 'Chris',
            handle: '@chris',
            time: '35m',
            text: 'Working on UI designs with Flutter!',
            image: 'assets/images/post5.jpg',
            likes: 35,
          ),
          PostItem(
            avatar: 'assets/images/3.jpg',
            username: 'Alex',
            handle: '@alex',
            time: '40m',
            text: 'Dart programming is fun!',
            image: 'assets/images/post6.jpg',
            likes: 45,
          ),
          PostItem(
            avatar: 'assets/images/1.jpeg',
            username: 'Grace',
            handle: '@grace',
            time: '45m',
            text: 'Attended an awesome Flutter workshop!',
            image: 'assets/images/post1.jpg',
            likes: 50,
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.black,
        shape: CircularNotchedRectangle(), // Yuvarlak alt çubuk
        child: Container(
          height: 60.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.home, color: Colors.white),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.search, color: Colors.white),
              ),
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ChatsScreen()),
                  );
                },
                icon: Icon(Icons.mail, color: Colors.white),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.notifications, color: Colors.white),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
        backgroundColor: Colors.blue, // Eksik kalan post ekleme butonu
        mini: true, // Post ekleme ikonunu küçültme
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.centerDocked, // Butonun konumu
    );
  }
}

class PostItem extends StatefulWidget {
  final String avatar;
  final String username;
  final String handle;
  final String time;
  final String text;
  final String? image;
  final int likes;

  const PostItem({
    Key? key,
    required this.avatar,
    required this.username,
    required this.handle,
    required this.time,
    required this.text,
    this.image,
    required this.likes,
  }) : super(key: key);

  @override
  _PostItemState createState() => _PostItemState();
}

class _PostItemState extends State<PostItem> {
  int _likeCount = 0;
  bool _isLiked = false;
  bool _isRetweeted = false;

  @override
  void initState() {
    super.initState();
    _likeCount = widget.likes;
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey.shade900,
      margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      elevation: 4.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage(widget.avatar),
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.username,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      widget.handle + ' · ' + widget.time,
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              widget.text,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          if (widget.image != null)
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Image.asset(widget.image!),
            ),
          Divider(color: Colors.grey.shade700),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: Icon(
                  _isLiked ? Icons.favorite : Icons.favorite_border,
                  color: _isLiked ? Colors.red : Colors.grey,
                ),
                onPressed: () {
                  setState(() {
                    if (!_isLiked) {
                      _likeCount++;
                    } else {
                      _likeCount--;
                    }
                    _isLiked = !_isLiked;
                  });
                },
              ),
              Text(
                _likeCount.toString(),
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.chat_bubble_outline,
                  color: Colors.grey,
                ),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    _isRetweeted = !_isRetweeted;
                  });
                },
                icon: Icon(
                  Icons.repeat,
                  color: _isRetweeted ? Colors.green : Colors.grey,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.share,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: Colors.grey)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Home',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
