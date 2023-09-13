import 'package:flutter/material.dart';

class CreatePersonPage extends StatefulWidget {
  const CreatePersonPage({super.key});

  @override
  State<CreatePersonPage> createState() => _CreatePersonPageState();
}

class _CreatePersonPageState extends State<CreatePersonPage> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(8),
          child: Center(
            child: Text("formulário"),
          ),
        ),
      ),
    );
  }
}
