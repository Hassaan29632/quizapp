import 'package:flutter/material.dart';


class homescreen extends StatelessWidget {
  const homescreen({super.key});

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset('assets/images/dartq.png',
            width: 200,
          ),
          const Text("Flutter Quiz App",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,

          ),),
          SizedBox(height: 20),
          ElevatedButton(onPressed: (){},
              style: ElevatedButton.styleFrom(
                 backgroundColor: Colors.yellow,
              ),
              child: Text("start app")),
        ],
      ),
    );

  }
}
