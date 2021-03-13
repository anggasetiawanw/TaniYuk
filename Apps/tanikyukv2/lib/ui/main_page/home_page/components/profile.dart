import 'package:flutter/material.dart';

import '../../../../size_config.dart';

class Profile extends StatelessWidget {
  const Profile({
    Key key,
    this.image,
    this.nama,
    this.owner,
  }) : super(key: key);
  final String image, nama, owner;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(15, 15, 0, 10),
      child: Row(
        children: [
          Container(
            child: CircleAvatar(
              radius: 40,
              backgroundColor: Colors.transparent,
              backgroundImage: AssetImage(image),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Spacer(),
            Text(nama,
                style: TextStyle(
                    fontFamily: "poppins",
                    fontSize: getProportionateScreenHeight(20),
                    color: Colors.white,
                    fontWeight: FontWeight.bold)),
            Text(
              owner,
              textAlign: TextAlign.left,
              style: TextStyle(
                fontFamily: "poppins",
                fontSize: getProportionateScreenHeight(12),
                color: Colors.white,
              ),
            ),
            Spacer(),
          ])
        ],
      ),
    );
  }
}
