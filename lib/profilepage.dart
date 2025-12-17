import 'package:flutter/material.dart';
import 'widgets/input_field.dart';

class Profilepage extends StatefulWidget {
  const Profilepage({super.key});

  @override
  State<StatefulWidget> createState() => ProfilePageState();
}

class ProfilePageState extends State<Profilepage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  String name = '';
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text('profile'), backgroundColor: Colors.teal),
      body: Center(
        child: SizedBox(
          height: 300,
          width: 450,
          child: Card(
            color: Colors.amber,
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InputField(
                      controller: nameController,
                      keyboardType: TextInputType.name,
                      obscureText: false,
                      labelText: "Name",
                      hintText: 'Enter name',
                      prefixIcon: Icon(Icons.person),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Please enter a name";
                        } else if (!RegExp(
                          r'^[A-Za-z .](3,)$',
                        ).hasMatch(value)) {
                          return "Invalid format";
                        }
                        return null;
                      },
                    ),

                    SizedBox(height: 20),

                    InputField(
                      controller: passwordController,
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: true,
                      labelText: "password",
                      hintText: 'Enter password',
                      prefixIcon: Icon(Icons.lock),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Please enter a name";
                        }
                        return null;
                      },
                    ),

                    SizedBox(height: 20),

                    ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          name = nameController.text;
                          setState(() {});
                        }
                      },
                      child: Text("submit"),
                    ),

                    SizedBox(height: 20),

                    Text("Name is: $name"),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
