import 'package:dog_walker/models/order_model.dart';
import 'package:dog_walker/models/walker_model.dart';
import 'package:dog_walker/providers/owner_provider.dart';
import 'package:dog_walker/screens/owner/dashboard/widgets/hour_stepper.dart';
import 'package:dog_walker/widgets/custom_button.dart';
import 'package:dog_walker/widgets/success_dialog_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class WalkerDetailsScreen extends StatefulWidget {
  const WalkerDetailsScreen({Key? key, required this.walker}) : super(key: key);
  final WalkerModel walker;

  @override
  State<WalkerDetailsScreen> createState() => _WalkerDetailsScreenState();
}

class _WalkerDetailsScreenState extends State<WalkerDetailsScreen> {
  int hours = 1;
  DateTime? selectedDate;
  TimeOfDay? selectedTime;

  double totalAmount = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    totalAmount = double.parse(widget.walker.hourlyRate!);
  }

  }
}
