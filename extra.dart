import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_social/utils/colors.dart';
import 'package:flutter_social/widgets/follow_button.dart';

class MobileScrenLayout extends StatefulWidget {
  const MobileScrenLayout({super.key});

  @override
  State<MobileScrenLayout> createState() => _MobileScrenLayoutState();
}

class _MobileScrenLayoutState extends State<MobileScrenLayout> {
  List<String> docIds = [];

  Future getDocId() async {
    await FirebaseFirestore.instance
        .collection("users")
        .get()
        .then((snapshot) => snapshot.docs.forEach((element) {
              print(element.reference);
            }));
  }
  // String username = "";

  // @override
  // void initstate() {
  //   super.initState();
  //   getUsername();
  // }

  // void getUsername() async {
  //   DocumentSnapshot snap = await FirebaseFirestore.instance
  //       .collection("users")
  //       .doc(FirebaseAuth.instance.currentUser!.uid)
  //       .get();

  //   print(snap.data());

  //   setState(() {
  //     username = (snap.data() as Map<String, dynamic>)['username'];
  //   });
  // }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FollowButton(
                  text: "edit profile",
                  backgroundColor: mobileBackgroundColor,
                  textColor: primaryColor,
                  borderColor: Colors.grey,
                  function: getDocId,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
