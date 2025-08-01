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
          OutlinedButton.icon(onPressed: (){},
              style: ElevatedButton.styleFrom(
                 backgroundColor: Colors.white,
              ),
              icon: Icon(Icons.arrow_right_alt_outlined),
              label: Text("start app")),
        ],
      ),
    );

  }
}
