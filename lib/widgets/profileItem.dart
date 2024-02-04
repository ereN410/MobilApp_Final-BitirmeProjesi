import 'package:flutter/material.dart';

class ProfileItem extends StatelessWidget {
  final Function()? onTap;
  final String avatar;
  final String name;

  const ProfileItem({
    super.key,
    this.onTap,
    required this.name,
    required this.avatar, required Color nameColor,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(3),
              decoration:
                  BoxDecoration(shape: BoxShape.circle, color: Colors.grey),
              child: Container(
                padding: EdgeInsets.all(2),
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.white),
                child: CircleAvatar(
                  backgroundImage: AssetImage(avatar),
                  radius: 30,
                ),
              ),
            ),
            SizedBox(width: 7),
            Text(name),
          ],
        ),
      ),
    );
  }
}
