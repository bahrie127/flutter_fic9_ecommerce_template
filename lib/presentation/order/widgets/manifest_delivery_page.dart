import 'package:another_stepper/another_stepper.dart';
import 'package:flutter/material.dart';

class ManifestDeliveryPage extends StatefulWidget {
  const ManifestDeliveryPage({super.key});

  @override
  State<ManifestDeliveryPage> createState() => _ManifestDeliveryPageState();
}

class _ManifestDeliveryPageState extends State<ManifestDeliveryPage> {
  @override
  Widget build(BuildContext context) {
    List<StepperData> stepperData = [
      StepperData(
          title: StepperText(
            "Order Placed",
            textStyle: const TextStyle(
              color: Colors.grey,
            ),
          ),
          subtitle: StepperText("Your order has been placed"),
          iconWidget: Container(
            padding: const EdgeInsets.all(8),
            decoration: const BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.all(Radius.circular(30))),
            child: const Center(
              child: Text(
                "1",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
            ),
          )),
      StepperData(
          title: StepperText("Preparing"),
          subtitle: StepperText("Your order is being prepared"),
          iconWidget: Container(
            padding: const EdgeInsets.all(8),
            decoration: const BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.all(Radius.circular(30))),
            child: const Center(
              child: Text(
                "2",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
            ),
          )),
      StepperData(
          title: StepperText("On the way"),
          subtitle: StepperText(
              "Our delivery executive is on the way to deliver your item"),
          iconWidget: Container(
            padding: const EdgeInsets.all(8),
            decoration: const BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.all(Radius.circular(30))),
            child: const Center(
              child: Text(
                "3",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
            ),
          )),
      StepperData(
          title: StepperText("On the way"),
          subtitle: StepperText(
              "Our delivery executive is on the way to deliver your item"),
          iconWidget: Container(
            padding: const EdgeInsets.all(8),
            decoration: const BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.all(Radius.circular(30))),
            child: const Center(
              child: Text(
                "4",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
            ),
          )),
      StepperData(
          title: StepperText("On the way"),
          subtitle: StepperText(
              "Our delivery executive is on the way to deliver your item"),
          iconWidget: Container(
            padding: const EdgeInsets.all(8),
            decoration: const BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.all(Radius.circular(30))),
            child: const Center(
              child: Text(
                "5",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
            ),
          )),
      StepperData(
          title: StepperText("On the way"),
          subtitle: StepperText(
              "Our delivery executive is on the way to deliver your item"),
          iconWidget: Container(
            padding: const EdgeInsets.all(8),
            decoration: const BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.all(Radius.circular(30))),
            child: const Center(
              child: Text(
                "6",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
            ),
          )),
      StepperData(
          title: StepperText("On the way"),
          subtitle: StepperText(
              "Our delivery executive is on the way to deliver your item"),
          iconWidget: Container(
            padding: const EdgeInsets.all(8),
            decoration: const BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.all(Radius.circular(30))),
            child: const Center(
              child: Text(
                "7",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
            ),
          )),
      StepperData(
          title: StepperText("On the way"),
          subtitle: StepperText(
              "Our delivery executive is on the way to deliver your item"),
          iconWidget: Container(
            padding: const EdgeInsets.all(8),
            decoration: const BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.all(Radius.circular(30))),
            child: const Center(
              child: Text(
                "8",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
            ),
          )),
      StepperData(
        title: StepperText("Delivered",
            textStyle: const TextStyle(
              color: Colors.grey,
            )),
      ),
    ];
    return Scaffold(
        appBar: AppBar(
          title: const Text('Lacak Pengiriman'),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: SingleChildScrollView(
            child: AnotherStepper(
              stepperList: stepperData,
              stepperDirection: Axis.vertical,
              iconWidth:
                  40, // Height that will be applied to all the stepper icons
              iconHeight:
                  40, // Width that will be applied to all the stepper icons
            ),
          ),
        ));
  }
}
