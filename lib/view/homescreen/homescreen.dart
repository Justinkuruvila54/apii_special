import 'package:apii_special/controller/homescreencontroller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  getdata() async {
   await Provider.of<Homescreencontroller>(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
      itemBuilder: (context, index) => card(),
    ));
  }

  Container card() {
    return Container(
      height: 120,
      width: double.infinity,
      //   color: Colors.amber,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 90,
              width: 90,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        "https://images.pexels.com/photos/699953/pexels-photo-699953.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                    fit: BoxFit.fill),
                color: Colors.black,
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text(
                    "Base Salad Plate Set",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 80,
                  ),
                  Text("\$82")
                ],
              ),
              Text("Dave Gray"),
              Text("\$82"),
              Row(
                children: [
                  Text(
                    "Remove",
                    style: TextStyle(color: Colors.blue),
                  ),
                  SizedBox(
                    width: 100,
                  ),
                  Container(
                    height: 30,
                    width: 90,
                    decoration: BoxDecoration(
                        color: Colors.red[300],
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.black)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [Text("---"), Text("1"), Text("+")],
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
