import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mock_api/core/constants/app_const.dart';
import 'package:mock_api/core/model/user.dart';
import 'package:mock_api/pages/details/details.dart';

// ignore: must_be_immutable
class CustomCard extends StatelessWidget {
  User user;
  CustomCard({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.network(user.avatar!),
        title: Text(
          "${user.name} ${user.surname}",
        ),
        subtitle: Text(
          "${user.phone} ${user.email}",
        ),
        trailing: OutlinedButton(
          onPressed: () {
            Get.to(
              DetailsPage(
                user: user,
              ),
            );
          },
          child: const Text(AppConsts.detailsText),
        ),
      ),
    );
  }
}
