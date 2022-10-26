import 'package:flutter/material.dart';
import 'package:mock_api/core/components/custom_card.dart';
import 'package:mock_api/core/constants/app_const.dart';
import 'package:mock_api/core/model/user.dart';
import 'package:mock_api/core/service/service.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late AppService service;

  @override
  void initState() {
    super.initState();
    service = AppService();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<List<User>?>(
        future: service.getUsers(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                return CustomCard(user: snapshot.data![index]);
              },
            );
          } else {
            return Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                CircularProgressIndicator(),
                Text(
                  AppConsts.loadingText,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                )
              ],
            ));
          }
        },
      ),
    );
  }
}
