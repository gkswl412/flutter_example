import 'package:flutter/material.dart';
import 'package:worker_list_example/worker/model/worker_model.dart';

class WorkerCard extends StatelessWidget {
  final String name;
  final String jobTypeName;
  final String phoneNumber;
  final String siteName;
  final String vendorName;

  const WorkerCard({
    required this.name,
    required this.jobTypeName,
    required this.phoneNumber,
    required this.siteName,
    required this.vendorName,
    Key? key,
  }) : super(key: key);

  factory WorkerCard.fromModel({
    required WorkerModel model,
  }) {
    return WorkerCard(
      name: model.name ?? '',
      jobTypeName: model.jobTypeName ?? '',
      phoneNumber: model.phoneNumber ?? '',
      siteName: model.siteName ?? '',
      vendorName: model.vendorName ?? '',
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: 1),
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                Text(
                  name,
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(' · '),
                Text(jobTypeName),
                Text(' · '),
                Text(phoneNumber),
              ],
            ),
            SizedBox(
              height: 8.0,
            ),
            Row(
              children: [
                Text(siteName),
                Text(' · '),
                Text(vendorName),
              ],
            )
          ],
        ),
      ),
    );
  }
}
