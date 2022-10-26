import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';
import 'package:mock_api/core/components/custom_text.dart';
import 'package:mock_api/core/model/user.dart';

// ignore: must_be_immutable
class DetailsPage extends StatelessWidget {
  User user;
  DetailsPage({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              user.avatar!,
              width: 256,
              height: 256,
              fit: BoxFit.cover,
            ),
            CustomText.nameSurnameText(
                name: user.name!, surname: user.surname!),
            CustomText.userInformation(lorem: lorem(paragraphs: 2, words: 60)),
          ],
        ),
      ),
    );
  }
}
