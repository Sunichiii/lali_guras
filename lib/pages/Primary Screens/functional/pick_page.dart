import 'package:driver_part/widgets/buttons/secondary_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../providers/pick_provider.dart';
import '../../../widgets/cards/delivery_card.dart';

class PickPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final deliveries = context.watch<PickProvider>().deliveries;

    return Scaffold(
      appBar: SecondaryAppBar(title: "Pick"),
      body: ListView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: deliveries.length,
        itemBuilder: (context, index) {
          return DeliveryCard(delivery: deliveries[index]);
        },
      ),
    );
  }
}
