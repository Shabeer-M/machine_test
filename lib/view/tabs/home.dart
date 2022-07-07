import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import '../../controlller/controller_objects.dart';

class Namelisting extends StatefulWidget {
  const Namelisting({Key? key}) : super(key: key);

  @override
  State<Namelisting> createState() => _NamelistingState();
}

class _NamelistingState extends State<Namelisting> {
  @override
  void initState() {
    userController.getDetails();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Obx(() => userController.Details.isNotEmpty
          ? ListView.builder(
              itemCount: userController.Details.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  leading: const Icon(
                    Icons.list,
                    color: Colors.white,
                  ),
                  trailing: Text(
                    userController.Details[index].employeeAge.toString(),
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                  title: Text(
                      userController.Details[index].employeeName.toString(),
                      style: TextStyle(color: Colors.white)),
                );
              })
          : CircularProgressIndicator()),
    );
  }
}
