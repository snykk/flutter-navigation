import 'package:flutter/material.dart';
import 'package:my_app/routes/routes.dart';
import 'package:my_app/views/login/login_page.dart';
import 'package:my_app/views/regis/regis_page.dart';

class IntroPage extends StatefulWidget {
  final String data = "data from intro page";
  const IntroPage({Key? key}) : super(key: key);

  @override
  State<IntroPage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<IntroPage> {
  String? closedFrom;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Intro Page"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FloatingActionButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(
                          builder: (context) => LoginPage(
                                argument: widget.data,
                              )))
                      .then((value) {
                    setState(() {
                      closedFrom = value;
                    });
                  });
                },
                child: const Text("Login"),
              ),
              FloatingActionButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(Routes.sus, arguments: widget.data).then((value) {
                    setState(() {
                      closedFrom = value as String;
                    });
                  });
                },
                child: const Text("Sus"),
              ),
              FloatingActionButton(
                onPressed: () {
                  Navigator.of(context)
                      .pushNamed(Routes.sus2, arguments: widget.data)
                      .then((value) {
                    setState(() {
                      closedFrom = value as String;
                    });
                  });
                },
                child: const Text("Sus 2"),
              ),
              FloatingActionButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(
                    MaterialPageRoute(
                        builder: (context) {
                          return const RegisPage();
                        },
                        settings: RouteSettings(arguments: widget.data)),
                  )
                      .then((data) {
                    setState(() {
                      closedFrom = data;
                    });
                  });
                },
                child: const Text("Regis"),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Text(
            "info: ${closedFrom ?? "no data"}",
            style: const TextStyle(fontSize: 25),
          )
        ],
      ),
    );
  }
}
