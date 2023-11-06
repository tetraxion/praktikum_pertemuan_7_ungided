import 'package:flutter/material.dart';

void main() {
  runApp(const ButtonSwitch());
}

class ButtonSwitch extends StatefulWidget {
  const ButtonSwitch({super.key});
  @override
  State<ButtonSwitch> createState() => _ButtonSwitchState();
}

class _ButtonSwitchState extends State<ButtonSwitch> {
  List<Widget> WidgetLutfi = [];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("App Permision"),
            backgroundColor: Colors.blueGrey,
            leading: Container(
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.arrow_back),
              ),
            ),
            actions: [
              Container(
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.help),
                ),
              ),
              Container(
                  child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.more_vert),
              )),
            ],
          ),
          body: ListView(
            children: [
              (ListTile(
                leading: Icon(Icons.camera_alt_outlined),
                title: Text(
                  "Camera",
                ),
                trailing: SwitchExample(),
                onTap: () {},
              )),
              (ListTile(
                leading: Icon(Icons.person_2_outlined),
                title: Text(
                  "Contacts",
                ),
                trailing: SwitchExample(),
                onTap: () {},
              )),
              (ListTile(
                leading: Icon(Icons.location_on_outlined),
                title: Text(
                  "Location",
                ),
                trailing: SwitchExample(),
                onTap: () {},
              )),
              (ListTile(
                leading: Icon(Icons.mic_none),
                title: Text(
                  "Microfont",
                ),
                trailing: SwitchExample(),
                onTap: () {},
              )),
              (ListTile(
                leading: Icon(Icons.sms_outlined),
                title: Text(
                  "SMS",
                ),
                trailing: SwitchExample(),
                onTap: () {},
              )),
              (ListTile(
                leading: Icon(Icons.folder_open_outlined),
                title: Text(
                  "Storage",
                ),
                trailing: SwitchExample(),
                onTap: () {},
              )),
              (ListTile(
                leading: Icon(Icons.phone),
                title: Text(
                  "Telephone",
                ),
                trailing: SwitchExample(),
                onTap: () {},
              )),
            ],
          )),
    );
  }
}

class SwitchExample extends StatefulWidget {
  const SwitchExample({super.key});
  @override
  State<SwitchExample> createState() => _SwitchExampleState();
}

class _SwitchExampleState extends State<SwitchExample> {
  bool light0 = true;
  bool light1 = true;
  final MaterialStateProperty<Icon?> thumbIcon =
      MaterialStateProperty.resolveWith<Icon?>(
    (Set<MaterialState> states) {
      if (states.contains(MaterialState.selected)) {
        return const Icon(Icons.check);
      }
      return const Icon(Icons.close);
    },
  );
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Switch(
          thumbIcon: thumbIcon,
          value: light1,
          onChanged: (bool value) {
            setState(() {
              light1 = value;
            });
          },
        ),
      ],
    );
  }
}
