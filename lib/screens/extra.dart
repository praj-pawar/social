// //import 'dart:io';

// //import 'package:animated_theme_switcher/animated_theme_switcher.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:flutter_social/screens/profile_screen.dart';
// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';
// //import 'package:path_provider/path_provider.dart';
// //import 'package:epapp/model/user.dart';
// //import 'package:epapp/utils/user_preferences.dart';
// import 'package:flutter_social/widgets/appbar_widget.dart';
// import 'package:flutter_social/widgets/button_widget.dart';
// import 'package:flutter_social/widgets/profile_widget.dart';
// import 'package:flutter_social/widgets/textfield_widget.dart';
// import 'package:path/path.dart';

// class EditProfilePage extends StatefulWidget {
//   @override
//   _EditProfilePageState createState() => _EditProfilePageState();
// }

// class _EditProfilePageState extends State<EditProfilePage> {
//   //late User user;

//   // @override
//   // void initState() {
//   //   super.initState();

//   //   user = UserPreferences.getUser();
//   // }

//   @override
//   Widget build(BuildContext context) => ThemeSwitchingArea(
//         child: Builder(
//           builder: (context) => Scaffold(
//             appBar: buildAppBar(context),
//             body: ListView(
//               padding: EdgeInsets.symmetric(horizontal: 32),
//               physics: BouncingScrollPhysics(),
//               children: [
//                 ProfileWidget(
//                   imagePath:
//                       'https://thumbs.dreamstime.com/b/default-avatar-profile-icon-social-media-user-vector-image-icon-default-avatar-profile-icon-social-media-user-vector-image-209162840.jpg',
//                   isEdit: true,
//                   onClicked: () {},
//                   // async {
//                   //   final image = await ImagePicker()
//                   //       .getImage(source: ImageSource.gallery);

//                   //   if (image == null) return;

//                   //   final directory = await getApplicationDocumentsDirectory();
//                   //   final name = basename(image.path);
//                   //   final imageFile = File('${directory.path}/$name');
//                   //   final newImage =
//                   //       await File(image.path).copy(imageFile.path);

//                   //   setState(() => user = user.copy(imagePath: newImage.path));
//                   // },
//                 ),
//                 const SizedBox(height: 24),
//                 TextFieldWidget(
//                   label: 'Full Name',
//                   text: FirebaseFirestore.instance
//                       .collection("users")
//                       .doc("username"),
//                   onChanged: () {},
//                   // (name) => user = user.copy(name: name),
//                 ),
//                 const SizedBox(height: 24),
//                 TextFieldWidget(
//                   label: 'Email',
//                   text: 'ds',
//                   onChanged: () {},
//                   //(email) => user = user.copy(email: email),
//                 ),
//                 const SizedBox(height: 24),
//                 TextFieldWidget(
//                   label: 'Bio',
//                   text: 'ds',
//                   maxLines: 1,
//                   onChanged: () {},
//                   //(about) => user = user.copy(about: about),
//                 ),
//                 const SizedBox(height: 24),
//                 ButtonWidget(
//                   text: 'Update',
//                   onClicked: () {},
//                   //  {
//                   //   UserPreferences.setUser(user);
//                   //   Navigator.of(context).pop();
//                   // },
//                 ),
//                 // ButtonWidget(
//                 //   text: 'Logout',
//                 //   onClicked: () {
//                 //     UserPreferences.setUser(user);
//                 //     Navigator.of(context).pop();
//                 //   },
//                 // ),
//                 // ButtonWidget(
//                 //   text: 'Delete account',
//                 //   onClicked: () {
//                 //     UserPreferences.setUser(user);
//                 //     Navigator.of(context).pop();
//                 //   },
//                 // ),

//                 new Container(
//                   child: new Column(
//                     children: <Widget>[
//                       // new ElevatedButton(
//                       //   child: new Text("Update Profile"),
//                       //   onPressed: () {
//                       //     Navigator.push(
//                       //       context,
//                       //       MaterialPageRoute(
//                       //           builder: (context) => ProfilePage()),
//                       //     );
//                       //   },
//                       // ),
//                       new ElevatedButton(
//                         child: new Text("Logout"),
//                         // color:  Colors.blueAccent[600],
//                         onPressed: () {
//                           Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                                 builder: (context) => ProfilePage()),
//                           );
//                         },
//                       ),
//                       new ElevatedButton(
//                         child: new Text("Delete Account"),
//                         // color:  Colors.blueAccent[600],
//                         onPressed: () {},
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),s
//           ),
//         ),
//       );
// }
