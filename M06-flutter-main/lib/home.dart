import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  bool _status_switch = false;

  String dropval = "Bangun";

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("KayZenn")),
      body: Column(
        children: [
          SwitchListTile(
            secondary: const Icon(Icons.show_chart),
            title: const Text("Kegitan sehari"),
            value: _status_switch,
            onChanged: (val) {
              setState(() {
                _status_switch = val;
              });
            },
          ),
          Container(
              child: _status_switch
                  ? DropdownButton(
                      value: dropval,
                      onChanged: (String? val) {
                        setState(() {
                          dropval = val!;
                        });
                      },
                      items: const [
                        DropdownMenuItem(
                          value: "Bangun",
                          child: Text("wekap"),
                        ),
                        DropdownMenuItem(
                          value: "Makan",
                          child: Text("eat"),
                        ),
                        DropdownMenuItem(
                          value: "Tidur",
                          child: Text("Sleep"),
                        ),
                      ],
                    )
                  : null),
          if (_status_switch == true)
            if (dropval == "Bangun")
              const DeskripsiWekap()
            else if (dropval == "Makan")
              const DeskripsiMakan()
            else if (dropval == "Tidur")
              const DeskripsiSleep()
        ],
      ),
    );
  }
}

class DeskripsiWekap extends StatelessWidget {
  const DeskripsiWekap({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Text("Awal mula hari-hari saya"),
    );
  }
}

class DeskripsiMakan extends StatelessWidget {
  const DeskripsiMakan({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          const Text("Rendang", style: TextStyle(fontWeight: FontWeight.bold),),
          const Text("Deskripsi lengkap")
        ],
      ),
    );
  }
}

class DeskripsiSleep extends StatelessWidget {
  const DeskripsiSleep({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Text("Ini merupakan deskripsi bola"),
    );
  }
}
