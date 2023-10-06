import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  double result = 0;
  final TextEditingController _num1Controller = TextEditingController();   /// to control TextFormField
  final TextEditingController _num2Controller = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();            /// to control Form


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculator App'),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _num1Controller,
                keyboardType: TextInputType.number,
                textInputAction: TextInputAction.next,
                decoration: const InputDecoration(
                    hintText: 'Number 1'
                ),

                validator: (String? value) {
                  if (value?.trim().isEmpty ?? true) {
                    return 'Enter valid value';
                  }
                  return null;
                },
              ),

              TextFormField(
                controller: _num2Controller,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                    hintText: 'Number 2'
                ),

                validator: (String? value) {
                  if (value?.trim().isEmpty ?? true) {
                    return 'Enter valid value';
                  }
                  return null;
                },
              ),

              const SizedBox(height: 12,),

              ButtonBar(
                alignment: MainAxisAlignment.center,
                children: [
                  FloatingActionButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        double num1 = parseToDouble(_num1Controller.text.trim());
                        double num2 = parseToDouble(_num2Controller.text.trim());
                        result = add(num1, num2);
                        setState(() {});
                      }
                    }, child: const Icon(Icons.add),),

                  FloatingActionButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        double num1 = parseToDouble(_num1Controller.text.trim());
                        double num2 = parseToDouble(_num2Controller.text.trim());
                        result = sub(num1, num2);
                        setState(() {});
                      }

                    }, child: const Icon(Icons.remove),),

                  FloatingActionButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        double num1 = parseToDouble(_num1Controller.text.trim());
                        double num2 = parseToDouble(_num2Controller.text.trim());
                        result = mul(num1, num2);
                        setState(() {});
                      }
                    },
                    child: const Text('*', style: TextStyle(fontSize: 28),),),

                  FloatingActionButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        double num1 = parseToDouble(_num1Controller.text.trim());
                        double num2 = parseToDouble(_num2Controller.text.trim());
                        result = div(num1, num2);
                        setState(() {});
                      }
                    },
                    child: const Text('/', style: TextStyle(fontSize: 28),),),

                  FloatingActionButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        double num1 = parseToDouble(_num1Controller.text.trim());
                        double num2 = parseToDouble(_num2Controller.text.trim());
                        result = mod(num1, num2);
                        setState(() {});
                      }
                    },
                    child: const Text('%', style: TextStyle(fontSize: 28),),),
                ],
              ),

              const SizedBox(height: 15,),
              Text('Result: $result', style: const TextStyle(fontSize: 25),),

            ],
          ),
        ),
      ),
    );
  }

  double parseToDouble(String text) {
    return double.tryParse(text) ?? 0;
  }

  double add(double num1, double num2) {
    return num1 + num2;
  }

  double sub(double num1, double num2) {
    return num1 - num2;
  }

  double mul(double num1, double num2) {
    return num1 * num2;
  }

  double div(double num1, double num2) {
    return num1 / num2;
  }

  double mod(double num1, double num2) {
    return num1 % num2;
  }
}
